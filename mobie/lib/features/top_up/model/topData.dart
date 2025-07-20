import 'package:mobarter/features/TopUpPage.dart';

class TopData {
  final double? amountFiat;
  final double? amountCrypto;
  final String? networkProvider;
  final String? phoneNo;
  final String? currency;
  final String? dataPlanDescription;
  final TopUpScreen? screen;

  TopData({
    required this.amountFiat,
    required this.amountCrypto,
    required this.networkProvider,
    required this.phoneNo,
    required this.currency,
    required this.screen,
    required this.dataPlanDescription,
  });

  TopData copyWith({
    double? amountFiat,
    double? amountCrypto,
    String? networkProvider,
    String? phoneNo,
    TopUpScreen? screen,
    String? currency,
    String? dataPlanDescription,
  }) {
    return TopData(
      amountFiat: amountFiat ?? this.amountFiat,
      amountCrypto: amountCrypto ?? this.amountCrypto,
      networkProvider: networkProvider ?? this.networkProvider,
      phoneNo: phoneNo ?? this.phoneNo,
      currency: currency ?? this.currency,
      screen: screen ?? this.screen,
      dataPlanDescription: dataPlanDescription ?? this.dataPlanDescription,
    );
  }
}
