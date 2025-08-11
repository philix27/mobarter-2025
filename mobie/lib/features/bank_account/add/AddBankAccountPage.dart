import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bank_account/add/accountName.dart';
import 'package:mobarter/features/bank_account/add/accountNo.dart';
import 'package:mobarter/features/bank_account/add/selectBank.dart';
import 'package:mobarter/features/bank_account/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/bankAccount.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/utils/logger.dart' show appLogger;
import 'package:mobarter/widgets/widgets.dart';

class AddBankAccountPage extends HookConsumerWidget {
  const AddBankAccountPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final w = bankWatch(ref);
    final r = bankRead(ref);
    final createBankAccount = useMutation$BankAccount_create();

    submit() async {
      try {
        require(w.accountNo, "Account No. needed");
        require(w.accountName, "Account name needed");
        require(w.bankName, "Bank name needed");

        final response = await createBankAccount
            .runMutation(
              Variables$Mutation$BankAccount_create(
                input: Input$BankAccount_CreateInput(
                  accountName: w.accountName!,
                  accountNo: w.accountNo!,
                  bankName: w.bankName!,
                  bankCode: w.bankCode,
                ),
              ),
            )
            .networkResult;

        if (kDebugMode) {
          appLogger.e("Add Bank Account $response");
          return;
        }

        // final msg = response!.parsedData?.bankAccount_create;
        r.clear();
        appToast(context, "Account added successfully");
        Navigator.of(context).pop();
      } catch (e) {
        appToastErr(context, e.toString());
      }
    }

    return appScaffold(
      context,
      title: "Add Bank Accounts",
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).primaryColor,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
          color: Colors.white,
          iconSize: 25,
        ),
      ),
      body: Column(
        spacing: 20,
        children: [
          SelectBankAccount(),
          AccountNo(),
          w.accountNo != null && w.accountNo!.length == 10
              ? AccountName()
              : SizedBox.shrink(),
          SizedBox(height: 20),
          btn(title: "Add", onPressed: submit),
        ],
      ),
    );
  }
}
