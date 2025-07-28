import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';
import 'package:mobarter/features/top_up/presentation/airtime.dart';
import 'package:mobarter/features/top_up/presentation/dataPlan.dart';
import 'package:mobarter/features/top_up/presentation/phoneNo.dart';
import 'package:mobarter/features/top_up/presentation/screenTabs.dart';
import 'package:mobarter/features/top_up/presentation/selectNetwork.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/utils/logger.dart' show appLogger;
import 'package:mobarter/widgets/amountToPay.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:mobarter/widgets/txn_summary_page.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

enum TopUpScreen { airtime, dataPlan, dataBundle }

class TopUpsPage extends HookConsumerWidget {
  // final TopUpScreen screen;
  const TopUpsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget screenToDisplay;
    final data = topUpWatch(ref);

    final result = useMutation$Utility_purchaseAirtime();

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
      context,
      title: "Top Ups",
      body: Column(
        spacing: 20,
        children: [
          ShowTopUpProviders(),
          PhoneTextField(),
          // ShowCurrency(),
          TopUpTabs(),
          screenToDisplay,
          CryptoAmountPay(amountFiat: data.amountFiat ?? 0),
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
                screen: TxnSummaryPage(
                  childeren: [
                    simpleRow(
                      title: "Recipient number",
                      subtitle: data.phoneNo!,
                    ),
                    simpleRow(
                      title: "Nettwork Provider",
                      subtitle: data.networkProvider!,
                    ),
                    simpleRow(
                      title: "Amount",
                      subtitle: data.amountFiat != null
                          ? "₦ ${data.amountFiat.toString()}"
                          : "0",
                    ),
                    simpleRow(
                      title: "Pay",
                      subtitle: "CUSD ${data.amountCrypto!.toStringAsFixed(3)}",
                    ),
                    // simpleRow(title: "Cashback bonus", subtitle: cashback),
                    SizedBox(height: 20),
                  ],
                  send: (Input$PaymentInput paylod) async {
                    final response = await result
                        .runMutation(
                          Variables$Mutation$Utility_purchaseAirtime(
                            input: Input$Utilities_PurchaseAirtimeInput(
                              amount: data.amountFiat!,
                              countryCode: Enum$Country.NG,
                              operatorId: data.networkOperatorId!,
                              phoneNo: data.phoneNo!,
                              payment: Input$PaymentInput(
                                transaction_pin: "transaction_pin",
                                user_uid: "user_uid",
                              ),
                            ),
                          ),
                        )
                        .networkResult;

                    appLogger.e("Purchase airtime $response");

                    final msg = response!.parsedData?.utility_purchaseAirtime;

                    apptToast(context, msg!.title, subtitle: msg.subtitle);
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
