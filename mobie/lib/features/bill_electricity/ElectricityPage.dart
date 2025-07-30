import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_electricity/logic/provider.dart';
import 'package:mobarter/features/bill_electricity/presentation/accountNo.dart';
import 'package:mobarter/features/bill_electricity/presentation/amount.dart';
import 'package:mobarter/features/bill_electricity/presentation/meterType.dart';
import 'package:mobarter/features/bill_electricity/presentation/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/utils/logger.dart';
import 'package:mobarter/widgets/amountToPay.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:mobarter/widgets/txn_summary_page.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ElectricityPage extends HookConsumerWidget {
  const ElectricityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _makePayment = useMutation$ElectricityBill_makePayment();
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
          w.customerName != null
              ? listTile(
                  context,
                  title: w.customerName!,
                  subtitle: w.customerAddress,
                )
              : SizedBox.shrink(),
          btn(
            title: "Submit",
            onPressed: () {
              if (w.providerName == null || w.providerName!.isEmpty) {
                appToast(context, "Select a network provider");
                return;
              }

              if (w.amountCrypto == null || w.amountFiat == null) {
                appToast(context, "Select/Enter and amount");
                return;
              }

              if (w.amountFiat! < 50.0) {
                appToast(context, "Minimum of ₦50");
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
                  send: (Input$PaymentInput paylod) async {
                    try {
                      require(w.providerName, "Select a provider");
                      require(w.isPrepaid, "Select a Meter type");
                      require(w.accountNo, "Account No. needed");
                      require(w.customerName, "Customer credentials needed");
                      require(w.customerAddress, "Customer credentials needed");
                      require(w.amountFiat, "Customer credentials needed");
                      require(w.amountCrypto, "Customer credentials needed");

                      final response = await _makePayment
                          .runMutation(
                            Variables$Mutation$ElectricityBill_makePayment(
                              input: Input$ElectricityBill_PaymentInput(
                                payment: paylod,
                                countryCode: Enum$Country.NG,
                                customerName: w.customerName!,
                                customerAddress: w.customerAddress!,
                                meterNumber: w.accountNo!,
                                meterType: w.isPrepaid!
                                    ? "PREPAID"
                                    : "POSTPAID",
                                service: w.providerName!,
                                amount: int.parse(w.amountFiat.toString()),
                                reference: '',
                              ),
                            ),
                          )
                          .networkResult;

                      appLogger.e("Pay electricity bill $response");

                      final msg =
                          response!.parsedData?.electricityBill_makePayment;

                      appToast(
                        context,
                        "Success!",
                        subtitle: "Payment made successfully",
                      );
                    } catch (e) {
                      appToast(context, "Error: ${e}");
                    }
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
