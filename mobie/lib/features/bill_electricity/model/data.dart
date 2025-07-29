class ElectricityBillData {
  final double? amountFiat;
  final double? amountCrypto;
  final String? providerName;
  final String? providerImg;
  final String? accountNo;
  final bool? isPrepaid;
  final String? customerName;
  final String? customerAddress;

  ElectricityBillData({
    required this.amountFiat,
    required this.amountCrypto,
    required this.providerName,
    required this.providerImg,
    required this.accountNo,
    required this.isPrepaid,
    required this.customerAddress,
    required this.customerName,
  });

  ElectricityBillData copyWith({
    double? amountFiat,
    double? amountCrypto,
    String? providerName,
    String? providerImg,
    String? accountNo,
    String? customerName,
    String? customerAddress,
    bool? isPrepaid,
  }) {
    return ElectricityBillData(
      isPrepaid: isPrepaid ?? this.isPrepaid,
      amountFiat: amountFiat ?? this.amountFiat,
      amountCrypto: amountCrypto ?? this.amountCrypto,
      providerName: providerName ?? this.providerName,
      providerImg: providerImg ?? this.providerImg,
      accountNo: accountNo ?? this.accountNo,
      customerName: customerName ?? this.customerName,
      customerAddress: customerAddress ?? this.customerAddress,
    );
  }
}
