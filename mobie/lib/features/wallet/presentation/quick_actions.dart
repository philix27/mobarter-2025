import 'package:flutter/material.dart';
import 'package:mobarter/features/orders_sell/OrderSellCryptoPage.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/features/wallet/WalletQRCodePage.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:toastification/toastification.dart';

class QuickActionsModel {
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  QuickActionsModel({
    required this.title,
    required this.icon,
    required this.onPressed,
  });
}

Widget box(BuildContext context, QuickActionsModel item) {
  return Expanded(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: item.onPressed,
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Icon(item.icon, size: 18, color: Theme.of(context).primaryColor),
              SizedBox(height: 7),
              Text(
                item.title,
                style: textTheme(context).bodySmall?.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        spacing: 10,
        children: [
          box(
            context,
            QuickActionsModel(
              title: "Send",
              icon: Icons.send,
              onPressed: () {
                appToast(context, "Coming soon", type: ToastificationType.info);
                // pushScreen(
                //   context,
                //   screen: SetupTxnPinPage(),
                //   withNavBar: false,
                //   pageTransitionAnimation: PageTransitionAnimation.slideUp,
                // );
              },
            ),
          ),
          box(
            context,
            QuickActionsModel(
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
          // box(
          //   context,
          //   QuickActionsModel(
          //     title: "Buy",
          //     icon: Icons.arrow_downward,
          //     onPressed: () {},
          //   ),
          // ),
          box(
            context,
            QuickActionsModel(
              title: "Sell",
              icon: Icons.arrow_upward,
              onPressed: () {
                pushScreen(
                  context,
                  screen: OrdersSellCryptoPage(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.slideUp,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
