import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bank_account/logic/bank_account_model.dart';
import 'package:mobarter/features/orders_sell/logic/model.dart';

class OrderSellNotifier extends StateNotifier<OrderSell> {
  OrderSellNotifier()
    : super(OrderSell(amountCrypto: null, amountFiat: null, bankAccount: null));

  void updateBank(BankAccountModel b) {
    state = state.copyWith(bankAccount: b);
  }

  void updateAmount(double amountFiat, double amountCrypto) {
    state = state.copyWith(amountCrypto: amountCrypto, amountFiat: amountFiat);
  }
}
