import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/orders.gql.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/widgets.dart';

class OrdersHistory extends HookConsumerWidget {
  const OrdersHistory({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final result = useQuery$Orders_GetAll(
      Options$Query$Orders_GetAll(
        variables: Variables$Query$Orders_GetAll(
          input: Input$Order_GetAllInput(),
        ),
      ),
    );

    if (result.result.isLoading) {
      return const LoadingIndicator();
    }

    final data = result.result.parsedData?.orders_GetAll;

    return SizedBox(
      height: getH(context, 0.6),
      child: ListView.builder(
        shrinkWrap: true,
        primary: true,
        itemCount: data!.length,
        itemBuilder: (context, index) {
          final item = data[index];

          return listTile(
            context,
            title: "${item.currency_fiat.name} ${item.amount_fiat.toString()}",
            subtitle: "Sold ${item.amount_crypto.toString()}",
            trailing: Text(
              item.status.name,
              style: textTheme(context).bodySmall,
            ),
          );
        },
      ),
    );
  }
}
