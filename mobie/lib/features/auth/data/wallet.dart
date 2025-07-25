import 'dart:convert';

class WalletModel {
  final String address;
  final String ecrypted_private_key;
  final String public_key;
  final String seed_phrase_hash;
  final String encryptedPin;
  final String secret_question;
  final String answer_hash;
  final String ivBase64;
  final String pin_hash;
  final int salt_iterations;

  WalletModel({
    required this.address,
    required this.ecrypted_private_key,
    required this.public_key,
    required this.seed_phrase_hash,
    required this.encryptedPin,
    required this.secret_question,
    required this.answer_hash,
    required this.ivBase64,
    required this.pin_hash,
    required this.salt_iterations,
  });

  // Create an instance from a Map
  factory WalletModel.fromMap(Map<String, dynamic> map) {
    return WalletModel(
      address: map['address'] ?? '',
      ecrypted_private_key: map['ecrypted_private_key'] ?? '',
      public_key: map['public_key'] ?? '',
      secret_question: map['secret_question'] ?? '',
      pin_hash: map['pin_hash'] ?? '',
      answer_hash: map['answer_hash'] ?? '',
      seed_phrase_hash: map['seed_phrase_hash'] ?? '',
      encryptedPin: map['encryptedPin'] ?? '',
      ivBase64: map['ivBase64'] ?? '',
      salt_iterations: map['salt_iterations'] ?? '',
    );
  }

  // Convert the object to a Map
  Map<String, dynamic> toMap() {
    return {
      'address': address,
      'ecrypted_private_key': ecrypted_private_key,
      'public_key': public_key,
      'secret_question': secret_question,
      'pin_hash': pin_hash,
      'answer_hash': answer_hash,
      "seed_phrase_hash": seed_phrase_hash,
      "encryptedPin": encryptedPin,
      "ivBase64": ivBase64,
      "salt_iterations": salt_iterations,
    };
  }

  // Convert the object to a JSON string
  String toJson() {
    return jsonEncode(
      toMap(),
    ); // optional: use jsonEncode if using dart:convert
  }

  // Create an instance from JSON string
  factory WalletModel.fromJson(String source) {
    return WalletModel.fromMap(jsonDecode(source));
  }
}
