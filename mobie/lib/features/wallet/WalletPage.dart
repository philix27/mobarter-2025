import 'package:flutter/material.dart';
import 'package:mobarter/features/orders/OrderPage.dart';
import 'package:mobarter/features/orders/orders_sell/OrderSellCrypto.dart';
import 'package:mobarter/features/profile/profile_page.dart';
import 'package:mobarter/features/updates/presenation/optional_update_card.dart';
import 'package:mobarter/features/wallet/WalletQRCodePage.dart';
import 'package:mobarter/features/wallet/presentation/TokensList.dart';
import 'package:mobarter/features/wallet/presentation/quick_actions.dart';
import 'package:mobarter/features/wallet/presentation/total_balance.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:toastification/toastification.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      context,
      title: "Wallet",
      actions: [
        // IconButton(
        //   padding: EdgeInsets.only(right: 20),
        //   icon: Icon(Icons.receipt_long_outlined, size: 22),
        //   onPressed: () {},
        // ),
      ],
      leading: IconButton(
        padding: EdgeInsets.only(left: 20),
        icon: Icon(Icons.account_circle_outlined, size: 22),
        onPressed: () {
          pushScreen(
            context,
            screen: ProfilePage(),
            withNavBar: false,
            pageTransitionAnimation: PageTransitionAnimation.slideUp,
          );
        },
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OptionalUpdateCard(),
          TopCard(
            boxes: [
              box(
                context,
                item: QuickActionsModel(
                  title: "Send",
                  icon: Icons.send,
                  onPressed: () => appToast(
                    context,
                    "Coming soon",
                    type: ToastificationType.info,
                  ),
                ),
              ),
              box(
                context,
                item: QuickActionsModel(
                  title: "Receive",
                  icon: Icons.qr_code,
                  onPressed: () {
                    pushScreen(
                      context,
                      screen: WalletQrCodePage(),
                      withNavBar: false,
                      pageTransitionAnimation: PageTransitionAnimation.slideUp,
                    );
                  },
                ),
              ),
              box(
                context,
                item: QuickActionsModel(
                  title: "Buy/Sell",
                  icon: Icons.arrow_upward,
                  onPressed: () {
                    pushScreen(
                      context,
                      screen: OrdersPage(),
                      withNavBar: false,
                      pageTransitionAnimation: PageTransitionAnimation.slideUp,
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(height: getH(context, 0.7), child: TokensList()),
        ],
      ),
    );
  }
}

class TopCard extends StatelessWidget {
  TopCard({super.key, required this.boxes});
  final List<Widget> boxes;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Column(
        children: [
          Container(
            color: Theme.of(context).cardColor,
            height: getH(context, 0.12),
            child: Center(child: TotalBalance()),
          ),
          QuickActions(boxes: boxes),
        ],
      ),
    );
  }
}
