class TvBillsData {
  final double? amountFiat;
  final double? amountCrypto;
  final String? providerName;
  final String? providerImg;
  final String? bouquetDescription;
  final double? bouquetPrice;
  final String? bouquetCode;
  final String? smartCardNo;
  final String? customerName;

  TvBillsData({
    required this.amountFiat,
    required this.amountCrypto,
    required this.providerName,
    required this.providerImg,
    required this.smartCardNo,
    required this.bouquetPrice,
    required this.bouquetDescription,
    required this.bouquetCode,
    required this.customerName,
  });

  TvBillsData copyWith({
    double? amountFiat,
    double? amountCrypto,
    String? providerName,
    String? providerImg,
    String? bouquetDescription,
    double? bouquetPrice,
    String? bouquetCode,
    String? smartCardNo,
    String? customerName,
  }) {
    return TvBillsData(
      amountFiat: amountFiat ?? this.amountFiat,
      amountCrypto: amountCrypto ?? this.amountCrypto,
      providerName: providerName ?? this.providerName,
      providerImg: providerImg ?? this.providerImg,
      smartCardNo: smartCardNo ?? this.smartCardNo,
      customerName: customerName ?? this.customerName,
      bouquetCode: bouquetCode ?? this.bouquetCode,
      bouquetDescription: bouquetDescription ?? this.bouquetDescription,
      bouquetPrice: bouquetPrice ?? this.bouquetPrice,
    );
  }
}
