import 'package:flutter/material.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/features/wallet/WalletQRCodePage.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

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

List<QuickActionsModel> actions(BuildContext ctx) {
  return [
    QuickActionsModel(title: "Send", icon: Icons.send, onPressed: () {}),
    QuickActionsModel(title: "Receive", icon: Icons.qr_code, onPressed: () {}),
    QuickActionsModel(title: "Buy", icon: Icons.sell, onPressed: () {}),
    QuickActionsModel(title: "Withdraw", icon: Icons.outbond, onPressed: () {}),
  ];
}

Widget box(BuildContext context, QuickActionsModel item) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          onTap: item.onPressed,
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            width: 80,
            // height: 60,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Icon(
                  item.icon,
                  size: 18,
                  color: Theme.of(context).highlightColor,
                ),
                SizedBox(height: 7),
                Text(
                  item.title,
                  style: textTheme(context).bodySmall?.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
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
        children: [
          box(
            context,
            QuickActionsModel(
              title: "Send",
              icon: Icons.send,
              onPressed: () {},
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
          box(
            context,
            QuickActionsModel(
              title: "Buy",
              icon: Icons.arrow_downward,
              onPressed: () {},
            ),
          ),
          box(
            context,
            QuickActionsModel(
              title: "Withdraw",
              icon: Icons.arrow_upward,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
