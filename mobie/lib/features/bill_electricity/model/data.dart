class ElectricityBillData {
  final double? amountFiat;
  final double? amountCrypto;
  final String? providerName;
  final String? providerImg;
  final String? accountNo;

  ElectricityBillData({
    required this.amountFiat,
    required this.amountCrypto,
    required this.providerName,
    required this.providerImg,
    required this.accountNo,
  });

  ElectricityBillData copyWith({
    double? amountFiat,
    double? amountCrypto,
    String? providerName,
    String? providerImg,
    String? accountNo,
  }) {
    return ElectricityBillData(
      amountFiat: amountFiat ?? this.amountFiat,
      amountCrypto: amountCrypto ?? this.amountCrypto,
      providerName: providerName ?? this.providerName,
      providerImg: providerImg ?? this.providerImg,
      accountNo: accountNo ?? this.accountNo,
    );
  }
}
