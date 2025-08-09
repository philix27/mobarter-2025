import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/paymentToken/model/data.dart';

class PaymentTokenDataNotifier extends StateNotifier<PaymentTokenData> {
  PaymentTokenDataNotifier()
    : super(
        PaymentTokenData(
          address: null,
          name: null,
          logo: null,
          chain: null,
          decimals: null,
          priceUSD: null,
          rpcUrl: null,
        ),
      );

  void update(PaymentTokenData token) {
    state = state.copyWith(
      address: token.address,
      logo: token.logo,
      name: token.name,
      chain: token.chain,
      decimals: token.decimals,
      priceUSD: token.priceUSD,
      rpcUrl: token.rpcUrl,
    );
  }

  // void updateCryptoAmount(double amount) {
  //   state = state.copyWith(cryptoAmountToPay: amount);
  // }
}
