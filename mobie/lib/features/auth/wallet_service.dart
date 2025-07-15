import 'dart:convert';
import 'dart:math';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:web3dart/credentials.dart';
import 'package:pointycastle/export.dart';
import 'package:web3dart/crypto.dart';

class CryptoWalletService {
  final _storage = const FlutterSecureStorage();
  static const _keyStorageKey = 'encrypted_private_key';
  static const _ivStorageKey = 'encryption_iv';

  /// Generates a new Ethereum wallet and returns the public address
  Future<String> generateAndStoreWallet(String password) async {
    final EthPrivateKey ethKey = EthPrivateKey.createRandom(Random.secure());
    final privateKeyHex = bytesToHex(ethKey.privateKey, include0x: false);

    final encrypted = _encryptPrivateKey(privateKeyHex, password);

    await _storage.write(key: _keyStorageKey, value: encrypted['encrypted']);
    await _storage.write(key: _ivStorageKey, value: encrypted['iv']);

    return ethKey.address.hex;
  }

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
  Map<String, String> _encryptPrivateKey(String privateKey, String password) {
    final key = _generateKeyFromPassword(password);
    final iv = encrypt.IV.fromSecureRandom(16);
    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    final encrypted = encrypter.encrypt(privateKey, iv: iv);
    return {'encrypted': encrypted.base64, 'iv': base64Encode(iv.bytes)};
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
}
