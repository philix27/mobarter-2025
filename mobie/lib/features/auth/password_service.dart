import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:pointycastle/export.dart';
import 'package:convert/convert.dart'; // for hex

class PasswordCredentials {
  final String salt;
  final String hash;
  final int iterations;

  PasswordCredentials({
    required this.salt,
    required this.hash,
    required this.iterations,
  });
}

class PasswordService {
  /// Generates a secure PBKDF2 hash of a password with a random salt
  PasswordCredentials hashPasswordSecure(
    String password, {
    int keyLength = 32,
    int iterations = 10000,
  }) {
    final salt = _generateSalt(16); // 16-byte random salt

    final generator = PBKDF2KeyDerivator(HMac(SHA256Digest(), 64))
      ..init(Pbkdf2Parameters(salt, iterations, keyLength));

    final hashed = generator.process(utf8.encode(password));

    return PasswordCredentials(
      salt: hex.encode(salt),
      hash: hex.encode(hashed),
      iterations: iterations,
    );
  }

  Uint8List _generateSalt(int length) {
    final random = Random.secure();
    return Uint8List.fromList(
      List.generate(length, (_) => random.nextInt(256)),
    );
  }

  /// Verify password by re-hashing and comparing
  bool verifyPassword({
    required String password,
    required String storedHash,
    required String saltHex,
    required String iterationsStr,
    int keyLength = 32,
  }) {
    final salt = hex.decode(saltHex);
    final iterations = int.parse(iterationsStr);

    final generator = PBKDF2KeyDerivator(HMac(SHA256Digest(), 64))
      ..init(Pbkdf2Parameters(Uint8List.fromList(salt), iterations, keyLength));

    final hashed = generator.process(utf8.encode(password));
    final hashedHex = hex.encode(hashed);

    return constantTimeEquality(hashedHex, storedHash);
  }

  /// Prevents timing attacks by using constant-time string comparison
  bool constantTimeEquality(String a, String b) {
    if (a.length != b.length) return false;
    int result = 0;
    for (int i = 0; i < a.length; i++) {
      result |= a.codeUnitAt(i) ^ b.codeUnitAt(i);
    }
    return result == 0;
  }
}
