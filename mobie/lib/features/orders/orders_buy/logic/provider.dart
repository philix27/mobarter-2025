import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/orders/orders_buy/logic/model.dart';
import 'package:mobarter/features/orders/orders_buy/logic/notifier.dart';

final orderBuyProvider = StateNotifierProvider<OrderBuyNotifier, OrderBuy>((
  ref,
) {
  return OrderBuyNotifier();
});

OrderBuyNotifier buyOrderRead(WidgetRef ref) {
  return ref.read(orderBuyProvider.notifier);
}

OrderBuy buyOrderWatch(WidgetRef ref) {
  return ref.watch(orderBuyProvider);
}
