import 'dart:convert';

class WalletModel {
  final String address;
  final String ecrypted_private_key;
  final String public_key;
  final String secret_question;
  final String answer_salt;
  final String answer_hash;
  final String pin_salt;
  final String pin_hash;
  final int pin_iterations;

  WalletModel({
    required this.address,
    required this.ecrypted_private_key,
    required this.public_key,
    required this.secret_question,
    required this.answer_hash,
    required this.answer_salt,
    required this.pin_hash,
    required this.pin_salt,
    required this.pin_iterations,
  });

  // Create an instance from a Map
  factory WalletModel.fromMap(Map<String, dynamic> map) {
    return WalletModel(
      address: map['address'] ?? '',
      ecrypted_private_key: map['ecrypted_private_key'] ?? '',
      public_key: map['public_key'] ?? '',
      secret_question: map['secret_question'] ?? '',
      pin_hash: map['pin_hash'] ?? '',
      pin_iterations: map['pin_iterations'] ?? '',
      pin_salt: map['pin_salt'] ?? '',
      answer_hash: map['answer_hash'] ?? '',
      answer_salt: map['answer_salt'] ?? '',
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
      'pin_iterations': pin_iterations,
      'pin_salt': pin_salt,
      'answer_hash': answer_hash,
      'answer_salt': answer_salt,
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
