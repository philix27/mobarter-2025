import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_tv/logic/provider.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
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

    return listTile(
      context,
      title: data.bouquetName ?? "Select Bouquet",
      tileColor: colorCard,
      // imgUrl: data.providerImg,
      trailing: Text(
        "Bouquet",
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
        child: Text("No providers"),
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
            dataRead.updateBouquet(item.description);
          },
        );
      },
    );
  }
}

class Lists extends StatelessWidget {
  const Lists({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
