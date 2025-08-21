import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/orders/history/history.dart';
import 'package:mobarter/features/orders/logic/model.dart';
import 'package:mobarter/features/orders/logic/provider.dart';
import 'package:mobarter/features/orders/orders_buy/OrdersBuy.dart';
import 'package:mobarter/features/orders/orders_sell/OrderSellCrypto.dart';
import 'package:mobarter/features/wallet/WalletPage.dart';
import 'package:mobarter/features/wallet/presentation/quick_actions.dart';
import 'package:mobarter/widgets/widgets.dart';

class OrdersPage extends HookConsumerWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final r = orderRead(ref);
    final w = orderWatch(ref);

    getView() {
      switch (w.activeView) {
        case OrderModelView.history:
          return OrdersHistory();
        case OrderModelView.sell:
          return OrdersSellCrypto();
        case OrderModelView.buy:
          return OrdersBuy();
        default:
          return OrdersHistory();
      }
    }

    return appScaffold(
      context,
      title: "Orders",
      body: Column(
        spacing: 20,
        children: [
          TopCard(
            boxes: [
              box(
                context,
                isActive: w.activeView == OrderModelView.history,
                item: QuickActionsModel(
                  title: "History",
                  icon: Icons.history,
                  onPressed: () {
                    r.updateView(OrderModelView.history);
                  },
                ),
              ),

              box(
                context,
                isActive: w.activeView == OrderModelView.sell,
                item: QuickActionsModel(
                  title: "Sell",
                  icon: Icons.call_made,
                  onPressed: () {
                    r.updateView(OrderModelView.sell);
                  },
                ),
              ),
              box(
                context,
                isActive: w.activeView == OrderModelView.buy,
                item: QuickActionsModel(
                  title: "Buy",
                  icon: Icons.call_received,
                  onPressed: () {
                    r.updateView(OrderModelView.buy);
                  },
                ),
              ),
            ],
          ),
          getView(),
        ],
      ),
    );
  }
}
