import 'package:flutter/material.dart';
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
import 'package:mobarter/widgets/widgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ElectricityPage extends HookConsumerWidget {
  const ElectricityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final makePayment = useMutation$ElectricityBill_makePayment();
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
          w.customerName != null && w.customerName!.isNotEmpty
              ? listTile(
                  context,
                  title: w.customerName!,
                  subtitle: w.customerAddress,
                )
              : SizedBox.shrink(),
          Btn(
            title: "Submit",
            onPressed: () {
              require(w.providerName, "Select a provider");
              require(w.amountFiat, "Amount needed");
              require(w.amountFiat, "Amount needed");
              require(w.amountFiat! > 50.0, "Minimum of ₦50");

              pushScreen(
                context,
                withNavBar: false,
                screen: TxnSummaryPage(
                  cryptoAmountToPay: w.amountCrypto!,
                  children: [
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
                  send: (paymentInfo) async {
                    try {
                      require(w.providerName, "Select a provider");
                      require(w.isPrepaid, "Select a Meter type");
                      require(w.accountNo, "Account No. needed");
                      require(w.customerName, "Customer credentials needed");
                      require(w.customerAddress, "Customer credentials needed");
                      require(w.amountFiat, "Amount needed");
                      require(w.amountFiat, "Amount needed");

                      final response = await makePayment
                          .runMutation(
                            Variables$Mutation$ElectricityBill_makePayment(
                              input: Input$ElectricityBill_PaymentInput(
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
                                payment: Input$PaymentInput(
                                  amountCrypto: w.amountCrypto!,
                                  amountFiat: w.amountFiat!,
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
                      appLogger.e("Pay electricity bill $response");

                      final msg =
                          response!.parsedData?.electricityBill_makePayment;

                      appToast(
                        context,
                        "Success!",
                        subtitle: "Payment made successfully",
                      );
                    } catch (e) {
                      appToastErr(context, "$e");
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
