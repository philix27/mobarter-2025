import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/pages/TopUpPage.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/topup.gql.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/listTile.dart';

class DataPlanWidget extends ConsumerWidget {
  const DataPlanWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = topUpWatch(ref);

    return listTile(context,
      title: data.amountFiat.toString() ?? "Select a data plan",
      tileColor: colorCard,
      trailing: Text(
        data.amountFiat.toString(),
        style: TextStyle(fontSize: 13, color: colorText),
      ),
      onTap: () {
        btmSheet(ctx: context, w: _SelectDataPlan(), h: 0.6);
      },
    );
  }
}

class _SelectDataPlan extends HookWidget {
  const _SelectDataPlan();

  @override
  Widget build(BuildContext context) {
    final result = useQuery$utility_getTopUpOperators(
      Options$Query$utility_getTopUpOperators(
        variables: Variables$Query$utility_getTopUpOperators(
          input: Input$Utilities_GetOperatorsInput(
            countryCode: Enum$Country.NG,
          ),
        ),
      ),
    );

    if (result.result.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final dataPlanList =
        result.result.parsedData?.utility_getTopUpOperators.dataPlan;
    final dataBundlesList =
        result.result.parsedData?.utility_getTopUpOperators.dataBundles;

    return PlanList(
      dataPlanCollection: dataPlanList,
      dataBundleCollection: dataBundlesList,
    );
  }
}

class PlanList extends ConsumerWidget {
  PlanList({
    super.key,
    required this.dataPlanCollection,
    required this.dataBundleCollection,
  });

  final List<
    Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan
  >?
  dataPlanCollection;
  final List<
    Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles
  >?
  dataBundleCollection;

  @override
  Widget build(BuildContext context, ref) {
    final data = topUpWatch(ref);
    final dataRead = topUpRead(ref);

    final cols = data.screen == TopUpScreen.dataBundle
        ? dataBundleCollection
        : dataPlanCollection;

    if (cols == null || cols.isEmpty) {
      return Center(child: Text("No plans available"));
    }

    final List<dynamic> collection = cols;

    final networkPlans = collection
        .where((val) => val.name == data.networkProvider)
        .toList();

    if (networkPlans.isEmpty) {
      return Center(child: Text("No plans available for this network"));
    }
    final plans = networkPlans.first.plans;

    if (plans == null || plans.isEmpty) {
      return Center(child: Text("No plans available for this network"));
    }

    return ListView.builder(
      itemCount: plans.length,
      shrinkWrap: true,
      itemBuilder: (ctx, i) {
        final item = plans[i];

        return listTile(context,
          title: item.desc,
          trailing: Text(
            item.amount.toString(),
            style: TextStyle(fontSize: 13, color: colorText),
          ),
          onTap: () {
            dataRead.updateAmountFiat(
              double.parse(item.amount.toString()) ?? 0,
              item.desc,
            );
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
