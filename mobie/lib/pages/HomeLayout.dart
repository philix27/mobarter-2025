import 'package:flutter/material.dart';
// import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/pages/WalletPage.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:mobarter/pages/PaymentsPage.dart';
import 'package:mobarter/pages/SettingsPage.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({super.key});

  List<PersistentTabConfig> _tabs(BuildContext context) {
    return [
      PersistentTabConfig(
        screen: const WalletPage(),
        item: ItemConfig(
          activeForegroundColor: Theme.of(context).primaryColor,
          icon: const Icon(Icons.home),
          title: "Home",
        ),
      ),

      PersistentTabConfig(
        screen: const PaymentsPage(),
        // screen: CrashlyticsPage(),
        item: ItemConfig(
          activeForegroundColor: Theme.of(context).primaryColor,
          icon: const Icon(Icons.payment),
          title: "Payments",
        ),
      ),

      PersistentTabConfig(
        screen: SettingsPage(),
        item: ItemConfig(
          activeForegroundColor: Theme.of(context).primaryColor,
          icon: const Icon(Icons.settings),
          title: "Settings",
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) => PersistentTabView(
    tabs: _tabs(context),
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    navBarBuilder: (navBarConfig) {
      return Style2BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      );
    },
  );
}
