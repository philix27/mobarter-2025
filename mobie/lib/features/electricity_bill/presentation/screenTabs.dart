import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/pages/TopUpPage.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';

class TopUpTabs extends ConsumerWidget {
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
          readData.updateAmountCrypto(0.0);
          readData.updateAmountFiat(0.0, "Data plan");
          // apptToast(context, "Switch tab");
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
