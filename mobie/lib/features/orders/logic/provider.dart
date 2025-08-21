import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/orders/logic/model.dart';
import 'package:mobarter/features/orders/logic/notifier.dart';

final orderProvider = StateNotifierProvider<OrderModelNotifier, OrderModel>((
  ref,
) {
  return OrderModelNotifier();
});

OrderModelNotifier orderRead(WidgetRef ref) {
  return ref.read(orderProvider.notifier);
}

OrderModel orderWatch(WidgetRef ref) {
  return ref.watch(orderProvider);
}
