import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/orders/orders_buy/amount.dart';
import 'package:mobarter/features/orders/orders_buy/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/orders.gql.dart';
import 'package:mobarter/routes.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/widgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class OrdersBuy extends HookConsumerWidget {
  const OrdersBuy({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = buyOrderWatch(ref);
    final result = useMutation$Orders_CreateSell();
    return Column(
      children: [
        BuyAmount(),
        CryptoAmountPay(amountFiat: data.amountFiat ?? 0),
        Btn(
          title: "Send",
          onPressed: () {
            try {
              require(
                data.bankAccount,
                "Select a bank account to receive funds",
              );
              require(data.amountCrypto, "Select/Enter and amount");
              require(data.amountFiat! >= 1500.0, "Minimum of 1500");

              pushScreen(
                context,
                withNavBar: false,
                screen: TxnSummaryPage(
                  cryptoAmountToPay: data.amountCrypto!,
                  pushTo: AppRoutes.orders,
                  send: (paymentInfo) async {
                    final response = await result
                        .runMutation(
                          Variables$Mutation$Orders_CreateSell(
                            input: Input$Order_CreteSellInput(
                              payment: Input$PaymentInput(
                                amountCrypto: data.amountCrypto!,
                                amountFiat: data.amountFiat!,
                                tokenAddress: paymentInfo.tokenAddress,
                                tokenChain: paymentInfo.tokenChain,
                                transaction_pin: paymentInfo.pin,
                                user_uid: paymentInfo.user_uid,
                                fiatCurrency: Enum$Country.NG,
                              ),
                              bank_id: data.bankAccount!.id!,
                              currency_fiat: Enum$Country.NG,
                              status: Enum$OrderStatus.PENDING,
                              trade_type: Enum$TradeType.SELL,
                              action_user: Enum$OrderActions.LockCrypto,
                            ),
                          ),
                        )
                        .networkResult;

                    validateGqlQuery(response);

                    final msg = response!.parsedData?.orders_CreateSell.message;

                    appToast(context, msg!);
                  },
                  children: [
                    simpleRow(
                      title: "You receive",
                      subtitle: data.amountFiat != null
                          ? "₦ ${data.amountFiat.toString()}"
                          : "0",
                    ),
                    simpleRow(
                      title: "Pay",
                      subtitle: "USD ${data.amountCrypto!.toStringAsFixed(3)}",
                    ),
                    simpleRow(
                      title: "Account name",
                      subtitle: data.bankAccount?.accountName,
                    ),
                    simpleRow(
                      title: "Account no.",
                      subtitle: data.bankAccount?.accountNo,
                    ),
                    simpleRow(
                      title: "Bank name",
                      subtitle: data.bankAccount?.bankName,
                    ),

                    // simpleRow(title: "Cashback bonus", subtitle: cashback),
                    SizedBox(height: 20),
                  ],
                ),
              );
            } catch (e) {
              appToastErr(context, e.toString());
            }
          },
        ),

        // SizedBox(
        //   height: getH(context, 0.3),
        //   child: Center(child: Text("Coming soon")),
        // ),
      ],
    );
  }
}
