import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_tv/logic/provider.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/loading.dart';

class TvBillsProviders extends ConsumerWidget {
  const TvBillsProviders({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = tvBillWatch(ref);

    return listTile(
      context,
      title: data.providerName ?? "Select Providers",
      tileColor: colorCard,
      imgUrl: data.providerImg,
      trailing: Text(
        "Providers",
        style: TextStyle(fontSize: 12, color: colorText),
      ),
      onTap: () {
        btmSheet(ctx: context, w: _ProvidersList());
      },
    );
  }
}

class _ProvidersList extends HookConsumerWidget {
  const _ProvidersList();

  @override
  Widget build(BuildContext context, ref) {
    final data = tvBillWatch(ref);
    final dataRead = tvBillRead(ref);

    final result = useQuery$tvBills_getProviders(
      Options$Query$tvBills_getProviders(
        variables: Variables$Query$tvBills_getProviders(
          input: Input$TvBill_GetTVProvidersInput(countryCode: Enum$Country.NG),
        ),
      ),
    );

    if (result.result.isLoading) {
      return const LoadingIndicator();
    }

    final list = result.result.parsedData?.tvBills_getProviders;

    final cols = list;

    if (cols == null || cols.isEmpty) {
      return Center(child: Text("No providers"));
    }

    return ListView.builder(
      itemCount: cols.length,
      shrinkWrap: true,
      itemBuilder: (ctx, i) {
        final item = cols[i];

        return listTile(
          context,
          title: item.name,
          trailing: Text("Provider", style: textTheme(context).bodySmall),
          imgUrl: item.logo,
          onTap: () {
            dataRead.updateProvider(item.name, item.logo);
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}

