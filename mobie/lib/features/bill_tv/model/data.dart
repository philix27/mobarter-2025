class TvBillsData {
  final double? amountFiat;
  final double? amountCrypto;
  final String? providerName;
  final String? providerImg;
  final String? bouquetName;
  final String? smartCardNo;
  final String? customerName;

  TvBillsData({
    required this.amountFiat,
    required this.amountCrypto,
    required this.providerName,
    required this.providerImg,
    required this.smartCardNo,
    required this.bouquetName,
    required this.customerName,
  });

  TvBillsData copyWith({
    double? amountFiat,
    double? amountCrypto,
    String? providerName,
    String? providerImg,
    String? bouquetName,
    String? smartCardNo,
    String? customerName,
  }) {
    return TvBillsData(
      amountFiat: amountFiat ?? this.amountFiat,
      amountCrypto: amountCrypto ?? this.amountCrypto,
      providerName: providerName ?? this.providerName,
      providerImg: providerImg ?? this.providerImg,
      smartCardNo: smartCardNo ?? this.smartCardNo,
      bouquetName: bouquetName ?? this.bouquetName,
      customerName: customerName ?? this.customerName,
    );
  }
}
