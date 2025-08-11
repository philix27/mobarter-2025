import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/features/bank_account/logic/model.dart';
import 'package:mobarter/features/bank_account/presentation/bank_item.dart';
import 'package:mobarter/graphql/schema/bankAccount.gql.dart';
import 'package:mobarter/widgets/loading.dart';

class BankAccountList extends HookWidget {
  BankAccountList({super.key, this.onAddBank});
 void Function(BankAccountModel bank)? onAddBank;

  @override
  Widget build(BuildContext context) {
    final result = useQuery$BankAccount_getAll(
      Options$Query$BankAccount_getAll(),
    );

    if (result.result.isLoading) {
      return const LoadingIndicator();
    }

    final list = result.result.parsedData?.bankAccount_getAll;

    if (list == null || list.isEmpty) {
      return Center(child: Text("No providers"));
    }

    return ListView.builder(
      itemCount: list.length,
      shrinkWrap: true,
      itemBuilder: (ctx, i) {
        final item = list[i];
        return BankItem(item: item, onAddBank: onAddBank);
      },
    );
  }
}
