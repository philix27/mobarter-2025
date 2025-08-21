import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_top_up/logic/provider.dart';
import 'package:mobarter/features/bill_top_up/presentation/airtime.dart';
import 'package:mobarter/features/bill_top_up/presentation/dataPlan.dart';
import 'package:mobarter/features/bill_top_up/presentation/phoneNo.dart';
import 'package:mobarter/features/bill_top_up/presentation/screenTabs.dart';
import 'package:mobarter/features/bill_top_up/presentation/selectNetwork.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/utils/logger.dart' show appLogger;
import 'package:mobarter/widgets/widgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

enum TopUpScreen { airtime, dataPlan, dataBundle }

class TopUpsPage extends HookConsumerWidget {
  // final TopUpScreen screen;
  const TopUpsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget screenToDisplay;
    final data = topUpWatch(ref);

    final purchaseAirtime = useMutation$Utility_purchaseAirtime();

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
          TopUpTabs(),
          screenToDisplay,
          CryptoAmountPay(amountFiat: data.amountFiat ?? 0),
          Btn(
            title: "Submit",
            onPressed: () {
              try {
                require(data.phoneNo, "Phone No. needed");
                require(
                  data.phoneNo!.length == 11,
                  "Phone number must be 11 digits",
                );

                require(data.networkProvider, "Select a network provider");
                require(data.amountCrypto, "Select/Enter and amount");
                require(data.amountFiat! >= 50.0, "Minimum of ₦50");

                pushScreen(
                  context,
                  withNavBar: false,
                  screen: TxnSummaryPage(
                    cryptoAmountToPay: data.amountCrypto!,
                    children: [
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
                        subtitle:
                            "USD ${data.amountCrypto!.toStringAsFixed(3)}",
                      ),
                      // simpleRow(title: "Cashback bonus", subtitle: cashback),
                      SizedBox(height: 20),
                    ],
                    send: (paymentInfo) async {
                      final response = await purchaseAirtime
                          .runMutation(
                            Variables$Mutation$Utility_purchaseAirtime(
                              input: Input$Utilities_PurchaseAirtimeInput(
                                amount: data.amountFiat!,
                                countryCode: Enum$Country.NG,
                                operatorId: data.networkOperatorId!,
                                phoneNo: data.phoneNo!,
                                payment: Input$PaymentInput(
                                  amountCrypto: data.amountCrypto!,
                                  amountFiat: data.amountFiat!,
                                  tokenAddress: paymentInfo.tokenAddress,
                                  tokenChain: paymentInfo.tokenChain,
                                  transaction_pin: paymentInfo.pin,
                                  user_uid: paymentInfo.user_uid,
                                  fiatCurrency: Enum$Country.NG,
                                ),
                              ),
                            ),
                          )
                          .networkResult;
                      validateGqlQuery(response);
                      appLogger.e("Purchase airtime $response");

                      final msg = response!.parsedData?.utility_purchaseAirtime;

                      appToast(context, msg!.title, subtitle: msg.subtitle);
                    },
                  ),
                );
              } catch (e) {
                appToastErr(context, e.toString());
              }
            },
          ),
        ],
      ),
    );
  }
}
