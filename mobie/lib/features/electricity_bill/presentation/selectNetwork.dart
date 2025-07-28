import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/topup.gql.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowTopUpProviders extends ConsumerWidget {
  const ShowTopUpProviders({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(topUpDataProvider);

    return listTile(context,
      title: data.networkProvider == null || data.networkProvider!.isEmpty
          ? "Select Network Provider"
          : data.networkProvider!,
      subtitle: "Network providers for top-up",
      tileColor: colorCard,
      onTap: () {
        btmSheet(ctx: context, w: _NetworkList(), h: 0.5);
      },
    );
  }
}

class _NetworkList extends HookWidget {
  const _NetworkList();

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

    final list = result.result.parsedData?.utility_getTopUpOperators;

    final collection = list?.airtime;

    if (collection == null || collection.isEmpty) {
      return Text("No data yet");
    }

    return ListView.builder(
      shrinkWrap: true,
      itemCount: collection.length,
      itemBuilder: (BuildContext ctx, int index) {
        final item = collection[index];
        return ListItem(item);
      },
    );
  }
}

class ListItem extends ConsumerWidget {
  final Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime item;
  const ListItem(this.item, {super.key});
  @override
  Widget build(BuildContext context, ref) {
    final topUpdata = ref.read(topUpDataProvider.notifier);
    // return listTile(title: item.name, imgUrl: item.logo);
    return listTile(context,
      title: item.name,
      onTap: () {
        topUpdata.updateNetwork(item.name, item.operatorId);
      },
    );
  }
}
