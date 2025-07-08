import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/features/top_up/selectCurrency.dart';
import 'package:mobarter/features/top_up/selectNetwork.dart';
import 'package:mobarter/features/top_up/topUpSummary.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';

class AirtimePage extends StatelessWidget {
  const AirtimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      title: "Airtime",
      body: Column(
        spacing: 10,
        children: [
          listTile(
            title: "Currency",
            subtitle: "Currency for payment",
            tileColor: colorCard,
            onTap: () {
              btmSheet(ctx: context, w: ShowCurrency(), h: 0.5);
            },
          ),
          listTile(
            title: "Network",
            subtitle: "Currency for payment",
            tileColor: colorCard,
            onTap: () {
              btmSheet(ctx: context, w: ShowTopUpProviders(), h: 0.5);
            },
          ),
          textField(label: 'Phone No.'),
          textField(label: 'Amount'),
          // textField(label: 'Phone No.'),
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
