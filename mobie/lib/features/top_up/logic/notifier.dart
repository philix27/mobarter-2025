import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/pages/TopUpPage.dart';
import 'package:mobarter/features/top_up/model/topData.dart';

class TopUpDataNotifier extends StateNotifier<TopData> {
  TopUpDataNotifier()
    : super(
        TopData(
          amountFiat: null,
          amountCrypto: null,
          dataPlanDescription: null,
          networkProvider: null,
          networkOperatorId: null,
          phoneNo: '',
          currency: "cUSD",
          screen: TopUpScreen.airtime,
        ),
      );

  void updatePhone(String phone) {
    if (phone.length > 11) return;
    state = state.copyWith(phoneNo: phone);
  }

  void updateAmountFiat(double amountFiat, String? dataPlanDescription) {
    // if (amountFiat <= 0) return;
    state = state.copyWith(
      amountFiat: amountFiat,
      dataPlanDescription: dataPlanDescription,
    );
  }

  void updateAmountCrypto(double amountCrypto) {
    // if (amountCrypto <= 0) return;
    state = state.copyWith(amountCrypto: amountCrypto);
  }

  void updateNetwork(String network, int networkOperatorId) {
    state = state.copyWith(networkProvider: network, networkOperatorId: networkOperatorId);
  }

  void updateCurrency(String currency) {
    state = state.copyWith(currency: currency);
  }

  void updateScreen(TopUpScreen tab) {
    state = state.copyWith(screen: tab);
  }
}
