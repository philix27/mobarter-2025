import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_electricity/logic/provider.dart';
import 'package:mobarter/features/bill_electricity/presentation/accountNo.dart';
import 'package:mobarter/features/bill_electricity/presentation/amount.dart';
import 'package:mobarter/features/bill_electricity/presentation/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/widgets/amountToPay.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:mobarter/widgets/txn_summary_page.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ElectricityPage extends ConsumerWidget {
  const ElectricityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = electricBillWatch(ref);

    return appScaffold(
      context,
      title: "Pay Electricity Bill",
      body: Column(
        spacing: 20,
        children: [
          ElectricityProviders(),
          ElectricityAmount(),
          AccountNoField(),
          // listTile(title: "Upper Limit", subtitle: "Instructions"),
          CryptoAmountPay(amountFiat: data.amountFiat ?? 0),
          SizedBox(height: 10),

          btn(
            title: "Submit",
            onPressed: () {
              // if (data.phoneNo == null || data.phoneNo!.isEmpty) {
              //   apptToast(context, "Enter phone number");
              //   return;
              // }

              // if (data.phoneNo!.length != 11) {
              //   apptToast(
              //     context,
              //     "Phone number must be 11 ${data.phoneNo} digits ${data.phoneNo!.length}",
              //   );
              //   return;
              // }

              if (data.providerName == null || data.providerName!.isEmpty) {
                apptToast(context, "Select a network provider");
                return;
              }

              if (data.amountCrypto == null || data.amountFiat == null) {
                apptToast(context, "Select/Enter and amount");
                return;
              }

              if (data.amountFiat! < 50.0) {
                apptToast(context, "Minimum of ₦50");
                return;
              }

              pushScreen(
                context,
                withNavBar: false,
                screen: TxnSummaryPage(
                  childeren: [],
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
