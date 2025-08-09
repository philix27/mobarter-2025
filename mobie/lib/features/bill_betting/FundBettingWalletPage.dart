import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_betting/logic/provider.dart';
import 'package:mobarter/features/bill_betting/presentation/accountNo.dart';
import 'package:mobarter/features/bill_betting/presentation/bettingAmount.dart';
import 'package:mobarter/features/bill_betting/presentation/providers.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/amountToPay.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/loading.dart';
import 'package:mobarter/features/paymentToken/txn_summary_page.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class FundBettingBillsPage extends HookConsumerWidget {
  const FundBettingBillsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = bettingWatch(ref);

    final result = useQuery$fundBetting_getProviders(
      Options$Query$fundBetting_getProviders(
        variables: Variables$Query$fundBetting_getProviders(
          input: Input$BettingProvidersInput(countryCode: Enum$Country.NG),
        ),
      ),
    );

    // if (result.result.isLoading) {
    //   return const LoadingIndicator();
    // }

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
          ? Column(children: [Center(child: LoadingIndicator())])
          : Column(
              spacing: 20,
              children: [
                // BettingProviders(),
                listTile(
                  context,
                  title: data.providerName ?? "Select Providers",
                  imgUrl: data.providerImg,
                  trailing: Text(
                    "Service ID",
                    style: textTheme(context).bodySmall,
                  ),
                  onTap: () {
                    btmSheet(
                      ctx: context,
                      w: BettingProvidersList(list: providersList),
                      h: 0.5,
                    );
                  },
                ),
                ServiceIdField(),
                listTile(
                  context, 
                  title: data.amountFiat == null
                      ? "Select amount"
                      : "₦${data.amountFiat}",
                  onTap: () {
                    btmSheet(
                      ctx: context,
                      w: BettingPriceList(list: priceList),
                      h: 0.5,
                    );
                  },
                ),
                CryptoAmountPay(amountFiat: data.amountFiat ?? 0),
                SizedBox(height: 10),

                btn(
                  title: "Submit",
                  onPressed: () {
                    require(data.amountFiat, "Select price");

                    pushScreen(
                      context,
                      withNavBar: false,
                      screen: TxnSummaryPage(
                        cryptoAmountToPay: data.amountCrypto!,
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
                          // btn(title: "Send", onPressed: ),
                        ],
                        send: (pin) async {
                          appToastErr(context, "Summary Page testing");
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
