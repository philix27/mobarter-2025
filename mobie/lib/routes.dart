import 'package:flutter/material.dart';
import 'package:mobarter/features/intro/Welcome.dart';
import 'package:mobarter/features/onboarding/SetupTxnPinPage.dart';
import 'package:mobarter/features/orders/OrderPage.dart';
import 'package:mobarter/features/wallet/WalletPage.dart';
import 'package:mobarter/pages/HomeLayout.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.home: (context) => const HomePageLayout(),
  AppRoutes.auth: (context) => const WalletPage(),
  AppRoutes.wallet: (context) => const WalletPage(),
  AppRoutes.setupPin: (context) => const SetupTxnPinPage(),
  AppRoutes.welcome: (context) => const WelcomePage(),
  AppRoutes.orders: (context) => const OrdersPage(),
};

class AppRoutes {
  static final home = "/home";
  static final auth = "/auth";
  static final wallet = "/wallet";
  static final welcome = "/welcome";
  static final orders = "/orders";
  static final setupPin = "/setup-pin";
}
