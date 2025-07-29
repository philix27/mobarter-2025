import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_electricity/logic/provider.dart';
import 'package:mobarter/features/bill_electricity/presentation/accountNo.dart';
import 'package:mobarter/features/bill_electricity/presentation/amount.dart';
import 'package:mobarter/features/bill_electricity/presentation/meterType.dart';
import 'package:mobarter/features/bill_electricity/presentation/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/widgets/amountToPay.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:mobarter/widgets/txn_summary_page.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ElectricityPage extends ConsumerWidget {
  const ElectricityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final w = electricBillWatch(ref);

    return appScaffold(
      context,
      title: "Pay Electricity Bill",
      body: Column(
        spacing: 20,
        children: [
          ElectricityProviders(),
          Electric_MeterType(),
          AccountNo(),
          ElectricityAmount(),
          CryptoAmountPay(amountFiat: w.amountFiat ?? 0),
          SizedBox(height: 10),

          btn(
            title: "Submit",
            onPressed: () {
              if (w.providerName == null || w.providerName!.isEmpty) {
                apptToast(context, "Select a network provider");
                return;
              }

              if (w.amountCrypto == null || w.amountFiat == null) {
                apptToast(context, "Select/Enter and amount");
                return;
              }

              if (w.amountFiat! < 50.0) {
                apptToast(context, "Minimum of ₦50");
                return;
              }

              pushScreen(
                context,
                withNavBar: false,
                screen: TxnSummaryPage(
                  childeren: [
                    simpleRow(
                      title: "Customer name",
                      subtitle: w.customerName!,
                    ),
                    simpleRow(
                      title: "Customer address",
                      subtitle: w.customerAddress!,
                    ),
                    simpleRow(title: "Provider", subtitle: w.providerName!),
                    simpleRow(title: "Meter No.", subtitle: w.accountNo),
                    simpleRow(
                      title: "Amount",
                      subtitle: "₦ ${w.amountFiat.toString()}",
                    ),
                    simpleRow(
                      title: "Amount in crypto",
                      subtitle: "cUSD ${w.amountCrypto.toString()}",
                    ),
                  ],
                  send: (Input$PaymentInput paylod) {},
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
