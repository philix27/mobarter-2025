import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/electricity_bill/presentation/accountNo.dart';
import 'package:mobarter/features/electricity_bill/presentation/amount.dart';
import 'package:mobarter/features/electricity_bill/presentation/provider.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';
import 'package:mobarter/features/top_up/presentation/amountToPay.dart';
import 'package:mobarter/features/top_up/presentation/topUpSummary.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ElectricityPage extends ConsumerWidget {
  const ElectricityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = topUpWatch(ref);

    return appScaffold(
      title: "Pay Electricity Bill",
      body: Column(
        spacing: 20,
        children: [
          ElectricityAmount(),
          ElectricityBillerType(),
          AccountNoField(),
          listTile(title: "Upper Limit", subtitle: "Instructions"),
          CryptoAmountPay(),
          SizedBox(height: 20),
          // ShowTopUpProviders(),
          // PhoneTextField(),
          // TopUpTabs(),
          btn(
            title: "Submit",
            onPressed: () {
              if (data.phoneNo == null || data.phoneNo!.isEmpty) {
                apptToast(context, "Enter phone number");
                return;
              }

              if (data.phoneNo!.length != 11) {
                apptToast(
                  context,
                  "Phone number must be 11 ${data.phoneNo} digits ${data.phoneNo!.length}",
                );
                return;
              }

              if (data.networkProvider == null ||
                  data.networkProvider!.isEmpty) {
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
                screen: TopUpSummaryPage(
                  recipientPhone: data.phoneNo!,
                  networkProvider: data.networkProvider!,
                  amountToPay: "CUSD ${data.amountCrypto!.toStringAsFixed(3)}",
                  // amountToPay: data.amountCrypto != null
                  //     ? data.amountCrypto.toString()
                  //     : "0",
                  amountOfProduct: data.amountFiat != null
                      ? "₦ ${data.amountFiat.toString()}"
                      : "0",
                  cashback: '',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
