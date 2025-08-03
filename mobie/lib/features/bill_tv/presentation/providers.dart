import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_tv/logic/provider.dart';
import 'package:mobarter/features/theme/constColors.dart';
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
        btmSheet(ctx: context, w: _SelectDataPlan(), h: 0.7);
      },
    );
  }
}

class _SelectDataPlan extends HookWidget {
  const _SelectDataPlan();

  @override
  Widget build(BuildContext context) {
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

    return BillProvidersList(list: list);
  }
}

class BillProvidersList extends ConsumerWidget {
  BillProvidersList({super.key, required this.list});

  final List<Query$tvBills_getProviders$tvBills_getProviders>? list;

  @override
  Widget build(BuildContext context, ref) {
    final data = tvBillWatch(ref);
    final dataRead = tvBillRead(ref);

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
          subtitle: "${item.status ? "ACTIVE" : "NON-ACTIVE"}",
          imgUrl: item.logo,
          onTap: () {
            dataRead.updateBilerType(item.name, item.logo);
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
