import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_betting/logic/provider.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/widgets/widgets.dart';

class BettingProviders extends ConsumerWidget {
  const BettingProviders({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = bettingWatch(ref);

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
        btmSheet(ctx: context, w: _SelectDataPlan(), h: 0.5);
      },
    );
  }
}

class _SelectDataPlan extends HookWidget {
  const _SelectDataPlan();

  @override
  Widget build(BuildContext context) {
    final result = useQuery$fundBetting_getProviders(
      Options$Query$fundBetting_getProviders(
        variables: Variables$Query$fundBetting_getProviders(
          input: Input$BettingProvidersInput(countryCode: Enum$Country.NG),
        ),
      ),
    );

    if (result.result.isLoading) {
      return const LoadingIndicator();
    }

    final list = result.result.parsedData?.fundBetting_getProviders;

    return BillProvidersList(list: list);
  }
}

class BillProvidersList extends ConsumerWidget {
  const BillProvidersList({super.key, required this.list});

  final List<Query$fundBetting_getProviders$fundBetting_getProviders>? list;

  @override
  Widget build(BuildContext context, ref) {
    final data = bettingWatch(ref);
    final dataRead = bettingRead(ref);

    final cols = list;

    if (cols == null || cols.isEmpty) {
      return Center(child: Text("No providers"));
    }

    return ListView.builder(
      primary: true,
      itemCount: cols.length,
      shrinkWrap: true,
      itemBuilder: (ctx, i) {
        final item = cols[i];

        return listTile(
          context,
          title: item.name,
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
