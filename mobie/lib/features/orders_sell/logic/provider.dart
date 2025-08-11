import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/orders_sell/logic/model.dart';
import 'package:mobarter/features/orders_sell/logic/notifier.dart';

final orderSellProvider =
    StateNotifierProvider<OrderSellNotifier, OrderSell>((ref) {
      return OrderSellNotifier();
    });

OrderSellNotifier sellOrderRead(WidgetRef ref) {
  return ref.read(orderSellProvider.notifier);
}

OrderSell sellOrderWatch(WidgetRef ref) {
  return ref.watch(orderSellProvider);
}
