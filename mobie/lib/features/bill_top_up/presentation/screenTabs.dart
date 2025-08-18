import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/features/bill_top_up/TopUpPage.dart';
import 'package:mobarter/features/bill_top_up/logic/provider.dart';

class TopUpTabs extends ConsumerWidget {
  const TopUpTabs({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = topUpWatch(ref);
    final readData = topUpRead(ref);

    Widget textTab(String title, TopUpScreen screen) {
      final data = ref.watch(topUpDataProvider);
      final bool isActive = screen == data.screen;
      return InkWell(
        onTap: () {
          readData.updateScreen(screen);
          readData.updateAmount(
            amountCrypto: 0.0,
            amountFiat: 0.0,
            dataPlanDescription: "Data plan",
          );
        },
        child: Center(
          widthFactor: 1,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isActive ? colorPrimary : colorText,
            ),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        textTab("Airtime", TopUpScreen.airtime),
        textTab("Data Plan", TopUpScreen.dataPlan),
        textTab("Data Bundles", TopUpScreen.dataBundle),
      ],
    );
  }
}
