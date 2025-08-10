
class BankAccountModel {
  final String? accountNo;
  final String? accountName;
  final String? bankName;
  final String? bankCode;

  BankAccountModel({
    required this.accountNo,
    required this.accountName,
    required this.bankName,
    required this.bankCode,
  });

  BankAccountModel copyWith({
    String? accountNo,
    String? accountName,
    String? bankName,
    String? bankCode,
  }) {
    return BankAccountModel(
      accountName: accountName ?? this.accountName,
      accountNo: accountNo ?? this.accountNo,
      bankCode: bankCode ?? this.bankCode,
      bankName: bankName ?? this.bankName,
    );
  }
}
