import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/graphql/schema/bankAccount.gql.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowBankAccounts extends HookWidget {
  const ShowBankAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$BankAccount_getAll(
      Options$Query$BankAccount_getAll(), 
    );
    final list = result.result.parsedData?.bankAccount_getAll;

    if (result.result.hasException) {
      print("Flutter Hook exception");
    }

    if (list == null || list.isEmpty) {
      return const Center(child: Text("No data found"));
    }

    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (BuildContext ctx, int index) {
        final item = list[index];
        return listTile(
          title: item.account_name,
          subtitle: item.account_no,
          trailing: Text(item.bank_name, style: TextStyle(fontSize: 14)),
        );
      },
    );
  }
}
