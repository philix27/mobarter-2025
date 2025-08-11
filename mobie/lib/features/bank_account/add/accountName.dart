import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bank_account/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/bankAccount.gql.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/loading.dart';

class AccountName extends HookConsumerWidget {
  const AccountName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final r = bankRead(ref);
    final w = bankWatch(ref);

    final result = useQuery$Bank_verifyAccountNo(
      Options$Query$Bank_verifyAccountNo(
        variables: Variables$Query$Bank_verifyAccountNo(
          input: Input$BankGetAccountName_Input(
            accountNo: w.accountNo!,
            bankCode: w.bankCode,
          ),
        ),
      ),
    );

    if (result.result.isLoading) {
      return LoadingIndicator();
    }

    final account = result.result.parsedData?.bank_verifyAccountNo;

    if (account == null) {
      return Text("No name found");
    }

    return listTile(context, title: account.account_name);
  }
}
