import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_betting/logic/provider.dart';
import 'package:mobarter/features/bill_betting/presentation/accountNo.dart';
import 'package:mobarter/features/bill_betting/presentation/bettingAmount.dart';
import 'package:mobarter/features/bill_betting/presentation/providers.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/widgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class FundBettingBillsPage extends HookConsumerWidget {
  const FundBettingBillsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final w = bettingWatch(ref);
    final makePayment = useMutation$fundBetting_makePayment();

    final result = useQuery$fundBetting_getProviders(
      Options$Query$fundBetting_getProviders(
        variables: Variables$Query$fundBetting_getProviders(
          input: Input$BettingProvidersInput(countryCode: Enum$Country.NG),
        ),
      ),
    );

    final providersList = result.result.parsedData?.fundBetting_getProviders;
    final priceList = result.result.parsedData?.fundBetting_getPriceList;

    final isNull =
        providersList == null ||
        providersList.isEmpty ||
        priceList == null ||
        result.result.isLoading;

    return appScaffold(
      context,
      title: "Fund Betting Wallet",
      body: isNull
          ? Column(
              children: [
                SizedBox(
                  height: getH(context, 0.6),
                  child: Center(child: LoadingIndicator()),
                ),
              ],
            )
          : Column(
              spacing: 20,
              children: [
                // BettingProviders(),
                BettingProvidersList(list: providersList),
                ServiceIdField(),
                listTile(
                  context,
                  title: w.amountFiat == null
                      ? "Select amount"
                      : "₦${w.amountFiat}",
                  onTap: () {
                    btmSheet(
                      ctx: context,
                      w: BettingPriceList(list: priceList),
                      h: 0.5,
                    );
                  },
                ),
                CryptoAmountPay(amountFiat: w.amountFiat ?? 0),
                SizedBox(height: 10),

                Btn(
                  title: "Submit",
                  onPressed: () {
                    try {
                      require(w.amountFiat, "Select price");
                      require(w.customerId, "Customer credentials needed");
                      require(w.serviceId, "Select a service");
                      require(w.amountFiat, "Enter a valid amount");
                      require(w.amountCrypto, "Enter a valid amount");

                      pushScreen(
                        context,
                        withNavBar: false,
                        screen: TxnSummaryPage(
                          cryptoAmountToPay: w.amountCrypto!,
                          children: [
                            simpleRow(
                              title: "Recipient number",
                              subtitle: "recipientPhone",
                            ),
                            simpleRow(
                              title: "Network Provider",
                              subtitle: "networkProvider",
                            ),
                            simpleRow(
                              title: "Amount",
                              subtitle: "amountOfProduct",
                            ),
                            simpleRow(title: "Pay", subtitle: "amountToPay"),
                            // simpleRow(title: "Cashback bonus", subtitle: cashback),
                            SizedBox(height: 20),
                            // Btn(title: "Send", onPressed: ),
                          ],
                          send: (paymentInfo) async {
                            try {
                              final response = await makePayment
                                  .runMutation(
                                    Variables$Mutation$fundBetting_makePayment(
                                      input: Input$BettingPaymentInput(
                                        countryCode: Enum$Country.NG,
                                        customer_id: w.customerId!,
                                        service_id: w.serviceId!,
                                        payment: Input$PaymentInput(
                                          amountCrypto: w.amountCrypto!,
                                          amountFiat: w.amountFiat!,
                                          tokenAddress:
                                              paymentInfo.tokenAddress,
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
                            } catch (e) {
                              appToastErr(context, e.toString());
                            }
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
