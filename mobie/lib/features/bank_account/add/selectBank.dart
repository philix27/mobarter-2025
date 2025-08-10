import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/features/bill_top_up/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/bankAccount.gql.dart';
import 'package:mobarter/graphql/schema/topup.gql.dart';
import 'package:mobarter/widgets/widgets.dart';

class BanksList extends ConsumerWidget {
  const BanksList({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(topUpDataProvider);

    return listTile(
      context,
      title: data.networkProvider == null || data.networkProvider!.isEmpty
          ? "Select Bank"
          : data.networkProvider!,
      subtitle: "Bank",
      tileColor: colorCard,
      onTap: () {
        btmSheet(ctx: context, w: _NetworkList());
      },
    );
  }
}

class _NetworkList extends HookConsumerWidget {
  const _NetworkList();

  @override
  Widget build(BuildContext context, ref) {
    final topUpdata = ref.read(topUpDataProvider.notifier);
    final result = useQuery$BankList(Options$Query$BankList());

    if (result.result.isLoading) {
      return const LoadingIndicator();
    }

    final list = result.result.parsedData?.bankList;

    final collection = list;

    if (collection == null || collection.isEmpty) {
      return Text("No data yet");
    }

    return ListView.builder(
      shrinkWrap: true,
      itemCount: collection.length,
      itemBuilder: (BuildContext ctx, int index) {
        final item = collection[index];
        return listTile(
          context,
          title: item.bankName,
          onTap: () {
            // topUpdata.updateNetwork(item.name, item.operatorId);
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
