
enum OrderModelView { history, sell, buy }

class OrderModel {
  final OrderModelView? activeView;

  OrderModel({required this.activeView});

  OrderModel copyWith({OrderModelView? activeView}) {
    return OrderModel(activeView: activeView ?? this.activeView);
  }
}
