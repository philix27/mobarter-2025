import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_betting/logic/provider.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/widgets/widgets.dart';

class BettingProvidersList extends ConsumerWidget {
  const BettingProvidersList({super.key, required this.list});
  final List<Query$fundBetting_getProviders$fundBetting_getProviders> list;
  @override
  Widget build(BuildContext context, ref) {
    final data = bettingWatch(ref);
    final dataRead = bettingRead(ref);

    return ListView.builder(
      primary: true,
      itemCount: list.length,
      shrinkWrap: true,
      itemBuilder: (ctx, i) {
        final item = list[i];

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
