import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_betting/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/fx.gql.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/widgets/widgets.dart';

class BettingPriceList extends HookConsumerWidget {
  const BettingPriceList({super.key});
  // final List<Query$fundBetting_getProviders$fundBetting_getPriceList> list;
  @override
  Widget build(BuildContext context, ref) {
    final dataRead = bettingRead(ref);
    final fxResult = useQuery$FxRate_GetAll(Options$Query$FxRate_GetAll());
    final data = fxResult.result;
    final rate = data.parsedData?.fxRate_GetAll.NG ?? 0;

    calcPrice(double amt) {
      final amountFiatN = amt ?? 0.0;

      return amountFiatN / rate;
    }

    final result = useQuery$fundBetting_getPriceList(
      Options$Query$fundBetting_getPriceList(
        variables: Variables$Query$fundBetting_getPriceList(
          input: Input$BettingProvidersInput(countryCode: Enum$Country.NG),
        ),
      ),
    );

    if (result.result.isLoading) {
      return Center(child: LoadingIndicator(height: 50));
    }

    if (result.result.hasException) {
      return Center(child: Text("Could not fetch price list"));
    }

    final priceList = result.result.parsedData?.fundBetting_getPriceList;
    final list = priceList!;

    return ListView.builder(
      primary: true,
      itemCount: list.length,
      shrinkWrap: true,
      itemBuilder: (ctx, i) {
        final item = list[i];

        return listTile(
          context,
          title: "₦${item.amount}",
          onTap: () {
            dataRead.updateAmount(
              amountCrypto: calcPrice(item.amount),
              amountFiat: item.amount,
            );
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
