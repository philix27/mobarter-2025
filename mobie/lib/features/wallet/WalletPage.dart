import 'package:flutter/material.dart';
import 'package:mobarter/features/profile/profile_page.dart';
import 'package:mobarter/features/updates/presenation/optional_update_card.dart';
import 'package:mobarter/features/wallet/presentation/TokensList.dart';
import 'package:mobarter/features/wallet/presentation/total_balance.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      context,
      title: "Wallet",
      actions: [
        IconButton(
          padding: EdgeInsets.only(right: 20),
          icon: Icon(Icons.receipt_long_outlined, size: 22),
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        padding: EdgeInsets.only(left: 20),
        icon: Icon(
          Icons.account_circle_outlined,
          size: 22,
          // color: Theme.of(context).i,
        ),
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
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              color: Theme.of(context).cardColor,
              height: getH(context, 0.12),
              child: Center(child: TotalBalance()),
            ),
          ),
          SizedBox(height: 20),
          TokensList(),
        ],
      ),
    );
  }
}
