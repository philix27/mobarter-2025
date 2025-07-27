import 'package:flutter/material.dart';
import 'package:mobarter/features/updates/presenation/optional_update_card.dart';
import 'package:mobarter/features/wallet/presentation/TokensList.dart';
import 'package:mobarter/features/wallet/presentation/total_balance.dart';
import 'package:mobarter/utils/size.dart';
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
            height: getH(context, 0.1),
            child: Center(child: TotalBalance()),
          ),
          TokensList(),
        ],
      ),
    );
  }
}
