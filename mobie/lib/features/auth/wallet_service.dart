import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:mobarter/features/auth/password_service.dart';
import 'package:mobarter/utils/logger.dart';
import 'package:web3dart/credentials.dart';
import 'package:pointycastle/export.dart';
import 'package:web3dart/crypto.dart';
import 'package:bip39/bip39.dart' as bip39;
// import 'package:ethereum_util/ethereum_util.dart' as eth_util;
import "package:ed25519_hd_key/ed25519_hd_key.dart";
import 'package:convert/convert.dart'; // for hex

class WalletCredentials {
  final String encryptedPrivateKey;
  final String publicAddress;
  final String publicKey;
  final String encryptedSeedPhrase;
  final String ivBase64;

  WalletCredentials({
    required this.encryptedPrivateKey,
    required this.publicAddress,
    required this.encryptedSeedPhrase,
    required this.ivBase64,
    required this.publicKey,
  });
}

enum SeedPhraseStrength { i128, i256 }

class CryptoWalletService {
  final _storage = const FlutterSecureStorage();

  static const _keyStorageKey = 'encrypted_private_key';
  static const _ivStorageKey = 'encryption_iv';

  void runner() async {
    await generateEthereumAddress("12323");
  }

  /// Generates a 12-word BIP-39 seed phrase
  String generateSeedPhrase({SeedPhraseStrength? strength}) {
    final str = strength == SeedPhraseStrength.i256 ? 256 : 128;
    // Strength: 128 bits = 12 words, 256 bits = 24 words
    return bip39.generateMnemonic(strength: str);
  }

  Future<WalletCredentials> generateEthereumAddress(String password) async {
    String seedPhrase = generateSeedPhrase();
    appLogger.i("Seed - $seedPhrase");

    String hexSeed = _stringToHex(seedPhrase);

    List<int> seedBytes = hex.decode(hexSeed);

    KeyData master = await ED25519_HD_KEY.getMasterKeyFromSeed(seedBytes);

    final pb = await ED25519_HD_KEY.getPublicKey(master.key);

    final privateKeyHex = hex.encode(master.key);
    final pbHex = hex.encode(pb);

    final creds = EthPrivateKey.fromHex(privateKeyHex);
    final address = await creds.extractAddress();

    appLogger.i("Wallet add  ress: $address");

    final iv = _iv();
    final encryptedPrivateKey = _encryptPrivateKey(privateKeyHex, password, iv);
    final encryptedSeedPhrase = _encryptPrivateKey(seedPhrase, password, iv);

    return WalletCredentials(
      encryptedPrivateKey: encryptedPrivateKey,
      publicKey: pbHex,
      publicAddress: address.hex,
      encryptedSeedPhrase: encryptedSeedPhrase,
      ivBase64: iv.base64,
    );
  }

  Future generateExtraEthereumAddress(String seedPhrase) async {
    String hexSeed = _stringToHex(seedPhrase);

    List<int> seedBytes = hex.decode(hexSeed);

    KeyData data = await ED25519_HD_KEY.derivePath(
      "m/0'/2147483647'",
      seedBytes,
    );

    final privateKeyHex = hex.encode(data.key);

    final pb = await ED25519_HD_KEY.getPublicKey(data.key);

    final pbHex = hex.encode(pb);

    final creds = EthPrivateKey.fromHex(privateKeyHex);
    final address = await creds.extractAddress();

    appLogger.i("Wallet address: $address");
  }

  /// Generates a new Ethereum wallet and returns the privateKeyHex
  // Future<WalletCredentials> generateWallet(String password) async {
  //   final EthPrivateKey ethKey = EthPrivateKey.createRandom(Random.secure());
  //   final privateKeyHex = bytesToHex(ethKey.privateKey, include0x: false);
  //   final encrypted = _encryptPrivateKey(privateKeyHex, password);

  //   final hashedPassword = encrypted['encrypted'];
  //   final iv = encrypted['iv'];

  //   await _storage.write(key: _keyStorageKey, value: encrypted['encrypted']);
  //   await _storage.write(key: _ivStorageKey, value: encrypted['iv']);

  //   return WalletCredentials(
  //     hashedPassword: '',
  //     encryptedPrivateKey: hashedPassword!,
  //     publicAddress: ethKey.address.hex,
  //     encryptedSeedPhrase: '',
  //     // iv: iv!,
  //   );
  // }

  /// Generates a new Ethereum wallet and returns the public address
  // Future<String> generateAndStoreWallet(String password) async {
  //   final EthPrivateKey ethKey = EthPrivateKey.createRandom(Random.secure());
  //   final privateKeyHex = bytesToHex(ethKey.privateKey, include0x: false);

  //   final encrypted = _encryptPrivateKey(privateKeyHex, password);

  //   await _storage.write(key: _keyStorageKey, value: encrypted['encrypted']);
  //   await _storage.write(key: _ivStorageKey, value: encrypted['iv']);

  //   return ethKey.address.hex;
  // }

  /// Loads and decrypts the wallet's private key using the provided password
  Future<EthPrivateKey?> loadWallet(String password) async {
    final encrypted = await _storage.read(key: _keyStorageKey);
    final iv = await _storage.read(key: _ivStorageKey);

    if (encrypted == null || iv == null) return null;

    try {
      final decrypted = _decryptPrivateKey(encrypted, iv, password);
      return EthPrivateKey.fromHex(decrypted);
    } catch (e) {
      print("Decryption failed: $e");
      return null;
    }
  }

  /// Checks if a wallet is stored
  Future<bool> walletExists() async {
    final encrypted = await _storage.read(key: _keyStorageKey);
    return encrypted != null;
  }

  /// Clears wallet data (useful for logout or reset)
  Future<void> deleteWallet() async {
    await _storage.delete(key: _keyStorageKey);
    await _storage.delete(key: _ivStorageKey);
  }

  /// Encrypts the private key with AES-256 using a password
  String _encryptPrivateKey(String privateKey, String password, encrypt.IV iv) {
    final key = _generateKeyFromPassword(password);

    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    final encrypted = encrypter.encrypt(privateKey, iv: iv);

    // return {'encrypted': encrypted.base64, 'iv': base64Encode(iv.bytes)};
    return encrypted.base64;
  }

  encrypt.IV _iv() {
    final iv = encrypt.IV.fromSecureRandom(16);
    return iv;
  }

  /// Decrypts the private key with AES-256 using a password and IV
  String _decryptPrivateKey(
    String encryptedBase64,
    String ivBase64,
    String password,
  ) {
    final key = _generateKeyFromPassword(password);
    final iv = encrypt.IV(base64Decode(ivBase64));
    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    final decrypted = encrypter.decrypt64(encryptedBase64, iv: iv);
    return decrypted;
  }

  /// Derives a 256-bit key from the password using SHA256
  encrypt.Key _generateKeyFromPassword(String password) {
    final hashed = SHA256Digest().process(utf8.encode(password));
    return encrypt.Key(hashed);
  }

  String _stringToHex(String input) {
    final bytes = utf8.encode(input); // Convert to UTF-8 bytes
    final hexString = hex.encode(bytes); // Convert bytes to hex
    return hexString;
  }

  String _hexToString(String hexInput) {
    final bytes = hex.decode(hexInput);
    return utf8.decode(bytes);
  }
}
