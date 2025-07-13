import 'package:flutter/material.dart';
import 'package:mobarter/features/updates/presenation/optional_update_card.dart';
import 'package:mobarter/features/wallet/TokensList.dart';
import 'package:mobarter/widgets/scaffold.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      title: "Wallet",
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OptionalUpdateCard(),
          SizedBox(
            height: 120,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "500.90 USD",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "~800,000",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          TokensList(),
        ],
      ),
    );
  }
}
