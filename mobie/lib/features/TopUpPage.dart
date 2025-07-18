import 'package:flutter/material.dart';
import 'package:mobarter/features/top_up/presentation/airtime.dart';
import 'package:mobarter/features/top_up/presentation/dataPlan.dart';
import 'package:mobarter/features/top_up/presentation/phoneNo.dart';
import 'package:mobarter/features/top_up/presentation/selectCurrency.dart';
import 'package:mobarter/features/top_up/presentation/selectNetwork.dart';
import 'package:mobarter/features/top_up/presentation/topUpSummary.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/scaffold.dart';

enum TopUpScreen { airtime, dataPlan, dataBundle }

class TopUpsPage extends StatelessWidget {
  final TopUpScreen screen;
  const TopUpsPage({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    Widget screenToDisplay;

    switch (screen) {
      case TopUpScreen.airtime:
        screenToDisplay = AirtimeWidget();
        break;
      case TopUpScreen.dataPlan:
        screenToDisplay = DataPlanWidget();
        break;
      case TopUpScreen.dataBundle:
        screenToDisplay = DataPlanWidget();
        break;
    }

    return appScaffold(
      title: "Top Ups",
      body: Column(
        spacing: 15,
        children: [
          ShowTopUpProviders(),
          PhoneTextField(),
          ShowCurrency(),
          screenToDisplay,
          btn(
            title: "Submit",
            onPressed: () {
              btmSheet(
                ctx: context,
                w: ShowTopUpSummary(
                  recipientPhone: '08101234567',
                  networkProvider: 'MTN',
                  amountToPay: '300',
                  amountOfProduct: '500',
                  cashback: '30',
                ),
                h: 0.5,
              );
            },
          ),
        ],
      ),
    );
  }
}
