import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_tv/logic/provider.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/graphql/schema/fx.gql.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/loading.dart';

class TvBillsBouquet extends ConsumerWidget {
  const TvBillsBouquet({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = tvBillWatch(ref);

    final isNull = data.bouquetDescription == null ? true : false;
    return listTile(
      context,
      title: data.bouquetDescription ?? "Select Bouquet",
      subtitle: data.customerName,
      tileColor: colorCard,
      // imgUrl: data.providerImg,
      trailing: Text(
        isNull ? "${data.bouquetPrice.toString()}" : "Bouquet",
        style: TextStyle(fontSize: 12, color: colorText),
      ),
      onTap: () {
        btmSheet(ctx: context, w: _BouquetList(), h: 0.6);
      },
    );
  }
}

class _BouquetList extends HookConsumerWidget {
  const _BouquetList();

  @override
  Widget build(BuildContext context, ref) {
    final data = tvBillWatch(ref);
    final dataRead = tvBillRead(ref);

    final fxResult = useQuery$FxRate_GetAll(Options$Query$FxRate_GetAll());
    final fxData = fxResult.result;
    final rate = fxData.parsedData?.fxRate_GetAll.NG ?? 0;

    calcPrice(double amt) {
      final amountFiatN = amt ?? 0.0;

      return amountFiatN / rate;
    }

    final result = useQuery$tvBills_getBouquet(
      Options$Query$tvBills_getBouquet(
        variables: Variables$Query$tvBills_getBouquet(
          input: Input$TvBill_GetTVBouquetInput(
            countryCode: Enum$Country.NG,
            service: data.providerName!,
          ),
        ),
      ),
    );

    if (result.result.isLoading) {
      return const LoadingIndicator();
    }

    final list = result.result.parsedData?.tvBills_getBouquet;

    final cols = list;

    if (cols == null || cols.isEmpty) {
      return Center(
        heightFactor: getH(context, 0.3),
        child: Text("No Bouquet"),
      );
    }

    return ListView.builder(
      itemCount: cols.length,
      shrinkWrap: true,
      itemBuilder: (ctx, i) {
        final item = cols[i];

        return listTile(
          context,
          title: item.description,
          trailing: Text(item.price, style: textTheme(context).bodySmall),
          subtitle: item.code,
          onTap: () {
            final price = double.tryParse(item.price) ?? 0;
            dataRead.updateBouquet(
              price: price,
              desc: item.description,
              code: item.code,
            );
            dataRead.updateAmountCrypto(
              amountFia: price,
              amountCrypto: calcPrice(price),
            );
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
