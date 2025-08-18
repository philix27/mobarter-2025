import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/features/bill_electricity/logic/provider.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/widgets/widgets.dart';

class ElectricityProviders extends ConsumerWidget {
  const ElectricityProviders({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = electricBillWatch(ref);

    return listTile(
      context,
      title: data.providerName ?? "Select Providers",
      tileColor: colorCard,
      imgUrl: data.providerImg,
      trailing: Text(
        "Providers",
        style: TextStyle(fontSize: 12, color: Theme.of(context).disabledColor),
      ),
      onTap: () {
        btmSheet(ctx: context, w: _SelectDataPlan());
      },
    );
  }
}

class _SelectDataPlan extends HookWidget {
  const _SelectDataPlan();

  @override
  Widget build(BuildContext context) {
    final result = useQuery$ElectricityBill_getProviders(
      Options$Query$ElectricityBill_getProviders(
        variables: Variables$Query$ElectricityBill_getProviders(
          input: Input$ElectricityBill_ProviderInput(
            countryCode: Enum$Country.NG,
          ),
        ),
      ),
    );

    if (result.result.isLoading) {
      return const LoadingIndicator();
    }

    final list = result.result.parsedData?.electricityBill_getProviders;

    return BillProvidersList(list: list);
  }
}

class BillProvidersList extends ConsumerWidget {
  const BillProvidersList({super.key, required this.list});

  final List<Query$ElectricityBill_getProviders$electricityBill_getProviders>?
  list;

  @override
  Widget build(BuildContext context, ref) {
    final data = electricBillWatch(ref);
    final dataRead = electricBillRead(ref);

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
          imgUrl: item.logo,
          onTap: () {
            dataRead.updateBilerType(item.name, item.logo);
            Navigator.of(context).pop();
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
