import 'package:flutter/material.dart';
import "package:flutter/services.dart";
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/pages/Payments.dart';
import 'package:mobarter/pages/Settings.dart';
import 'package:mobarter/pages/WalletPage.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // make navigation bar transparent
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent),
  );
  // make flutter draw behind navigation bar
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of y our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobarter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Builder(
        builder: (context) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed("/minimal"),
                child: const Text("Show Minimal Example"),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed("/interactive"),
                child: const Text("Show Interactive Example"),
              ),
            ],
          ),
        ),
      ),
      routes: {
        "/minimal": (context) => const MinimalExample(),
        "/interactive": (context) => const WalletPage(),
      },
    );
  }
}

class MinimalExample extends StatelessWidget {
  const MinimalExample({super.key});

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
