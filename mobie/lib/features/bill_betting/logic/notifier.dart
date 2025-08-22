import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_betting/model/data.dart';

class FundBettingWalletDataNotifier
    extends StateNotifier<FundBettingWalletData> {
  FundBettingWalletDataNotifier()
    : super(
        FundBettingWalletData(
          amountFiat: null,
          amountCrypto: null,
          providerName: null,
          providerImg: null,
          customerId: null,
        ),
      );

  void updateCustomerId(String customerId) {
    state = state.copyWith(customerId: customerId);
  }

  void updateAmount({
    required double amountFiat,
    required double amountCrypto,
  }) {
    state = state.copyWith(amountFiat: amountFiat, amountCrypto: amountCrypto);
  }

  void updateProviderInfo({required String name, required String img}) {
    state = state.copyWith(providerName: name, providerImg: img);
  }
}
