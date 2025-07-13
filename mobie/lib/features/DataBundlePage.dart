import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/features/top_up/presentation/selectCurrency.dart';
import 'package:mobarter/features/top_up/presentation/selectNetwork.dart';
import 'package:mobarter/features/top_up/presentation/topUpSummary.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';

class DataBundlePage extends StatelessWidget {
  const DataBundlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      title: "Data Plan",
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
