import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/features/TopUpPage.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';

class TopUpTabs extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(topUpDataProvider);
    final readData = ref.read(topUpDataProvider.notifier);

    Widget textTab(String title, TopUpScreen screen) {
      final data = ref.watch(topUpDataProvider);
      final bool isActive = screen == data.screen;
      return InkWell(
        onTap: () {
          readData.updateScreen(screen);
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
