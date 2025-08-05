import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_tv/logic/provider.dart';
import 'package:mobarter/features/bill_tv/presentation/accountNo.dart';
import 'package:mobarter/features/bill_tv/presentation/amount.dart';
import 'package:mobarter/features/bill_tv/presentation/providers.dart';
import 'package:mobarter/widgets/amountToPay.dart';
import 'package:mobarter/widgets/txn_summary_page.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class TvBillsPage extends ConsumerWidget {
  const TvBillsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = tvBillWatch(ref);

    return appScaffold(
      context,
      title: "Pay TV Bills",
      body: Column(
        spacing: 20,
        children: [
          TvBillsProviders(),
          TvBillsAmount(),
          TvBillsAccountNoField(),
          CryptoAmountPay(amountFiat: data.amountFiat ?? 0),
          SizedBox(height: 10),

          btn(
            title: "Submit",
            onPressed: () {
              // if (data.accountNo!.length != 11) {
              //   appToast(context, "Phone number must be");
              //   return;
              // }

              // if (data.providerName == null || data.providerName!.isEmpty) {
              //   appToast(context, "Select a network provider");
              //   return;
              // }

              // if (data.amountCrypto == null || data.amountFiat == null) {
              //   appToast(context, "Select/Enter and amount");
              //   return;
              // }

              // if (data.amountFiat! < 50.0) {
              //   appToast(context, "Minimum of ₦50");
              //   return;
              // }

              pushScreen(
                context,
                withNavBar: false,
                screen: TxnSummaryPage(
                  children: [
                    simpleRow(
                      title: "Recipient number",
                      subtitle: "recipientPhone",
                    ),
                    simpleRow(
                      title: "Network Provider",
                      subtitle: "networkProvider",
                    ),
                    simpleRow(title: "Amount", subtitle: "amountOfProduct"),
                    simpleRow(title: "Pay", subtitle: "amountToPay"),
                    // simpleRow(title: "Cashback bonus", subtitle: cashback),
                    SizedBox(height: 20),
                    // btn(title: "Send", onPressed: ),
                  ],
                  send: (pin) {
                    appToast(context, "Summary Page testing");
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
