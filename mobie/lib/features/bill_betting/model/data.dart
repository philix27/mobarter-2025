class FundBettingWalletData {
  final double? amountFiat;
  final double? amountCrypto;
  final String? providerName;
  final String? providerImg;
  final String? accountNo;
  final String? customerId;
  final String? serviceId;

  FundBettingWalletData({
    required this.amountFiat,
    required this.amountCrypto,
    required this.providerName,
    required this.providerImg,
    required this.accountNo,
    required this.customerId,
    required this.serviceId,
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
      accountNo: accountNo ?? this.accountNo,
      customerId: customerId ?? this.customerId,
      serviceId: serviceId ?? this.serviceId,
    );
  }
}
