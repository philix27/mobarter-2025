import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bank_account/logic/model.dart';
import 'package:mobarter/features/orders/orders_buy/logic/model.dart';

class OrderBuyNotifier extends StateNotifier<OrderBuy> {
  OrderBuyNotifier()
    : super(OrderBuy(amountCrypto: null, amountFiat: null, bankAccount: null));

  void updateBank(BankAccountModel b) {
    state = state.copyWith(bankAccount: b);
  }

  void updateAmount({required double amountFiat, required double amountCrypto}) {
    state = state.copyWith(amountCrypto: amountCrypto, amountFiat: amountFiat);
  }
}
