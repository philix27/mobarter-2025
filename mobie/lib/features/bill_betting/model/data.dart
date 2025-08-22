class FundBettingWalletData {
  final double? amountFiat;
  final double? amountCrypto;
  final String? providerName;
  final String? providerImg;
  final String? customerId;
  // final String? accountNo;
  // final String? serviceId;

  FundBettingWalletData({
    required this.amountFiat,
    required this.amountCrypto,
    required this.providerName,
    required this.providerImg,
    required this.customerId,
    // required this.accountNo,
    // required this.serviceId,
  });

  FundBettingWalletData copyWith({
    double? amountFiat,
    double? amountCrypto,
    String? providerName,
    String? providerImg,
    String? accountNo,
    String? customerId,
    String? serviceId,
  }) {
    return FundBettingWalletData(
      amountFiat: amountFiat ?? this.amountFiat,
      amountCrypto: amountCrypto ?? this.amountCrypto,
      providerName: providerName ?? this.providerName,
      providerImg: providerImg ?? this.providerImg,
      customerId: customerId ?? this.customerId,
      // accountNo: accountNo ?? this.accountNo,
      // serviceId: serviceId ?? this.serviceId,
    );
  }
}
