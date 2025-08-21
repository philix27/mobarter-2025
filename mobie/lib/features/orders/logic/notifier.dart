import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/orders/logic/model.dart';

class OrderModelNotifier extends StateNotifier<OrderModel> {
  OrderModelNotifier() : super(OrderModel(activeView: OrderModelView.history));

  void updateView(OrderModelView b) {
    state = state.copyWith(activeView: b);
  }
}
