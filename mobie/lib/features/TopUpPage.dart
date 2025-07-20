import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';
import 'package:mobarter/features/top_up/presentation/airtime.dart';
import 'package:mobarter/features/top_up/presentation/amountToPay.dart';
import 'package:mobarter/features/top_up/presentation/dataPlan.dart';
import 'package:mobarter/features/top_up/presentation/phoneNo.dart';
import 'package:mobarter/features/top_up/presentation/screenTabs.dart';
import 'package:mobarter/features/top_up/presentation/selectCurrency.dart';
import 'package:mobarter/features/top_up/presentation/selectNetwork.dart';
import 'package:mobarter/features/top_up/presentation/topUpSummary.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/scaffold.dart';

enum TopUpScreen { airtime, dataPlan, dataBundle }

class TopUpsPage extends ConsumerWidget {
  final TopUpScreen screen;
  const TopUpsPage({super.key, required this.screen});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget screenToDisplay;
    final data = topUpWatch(ref);

    switch (data.screen!) {
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
          TopUpTabs(),
          screenToDisplay,
          CryptoAmountPay(),
          btn(
            title: "Submit",
            onPressed: () {
              btmSheet(
                ctx: context,
                w: ShowTopUpSummary(
                  recipientPhone: data.phoneNo!,
                  networkProvider: data.networkProvider!,
                  amountToPay: data.amountCrypto != null
                      ? data.amountCrypto.toString()
                      : "0",
                  amountOfProduct: data.amountFiat != null
                      ? "₦ ${data.amountFiat.toString()}"
                      : "0",
                  cashback: '',
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
