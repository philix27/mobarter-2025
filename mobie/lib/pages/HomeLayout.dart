import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/pages/WalletPage.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:mobarter/pages/Payments.dart';
import 'package:mobarter/pages/Settings.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({super.key});

  List<PersistentTabConfig> _tabs() => [
    PersistentTabConfig(
      screen: const WalletPage(),
      item: ItemConfig(
        activeForegroundColor: colorPrimary,
        icon: const Icon(Icons.home),
        title: "Home",
      ),
    ),

    PersistentTabConfig(
      screen: const PaymentsPage(),
      item: ItemConfig(
        activeForegroundColor: colorPrimary,
        icon: const Icon(Icons.payment),
        title: "Payments",
      ),
    ),

    PersistentTabConfig(
      screen: const SettingsPage(),
      item: ItemConfig(
        activeForegroundColor: colorPrimary,
        icon: const Icon(Icons.settings),
        title: "Settings",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) => PersistentTabView(
    tabs: _tabs(),
    navBarBuilder: (navBarConfig) =>
        Style2BottomNavBar(navBarConfig: navBarConfig),
  );
}
