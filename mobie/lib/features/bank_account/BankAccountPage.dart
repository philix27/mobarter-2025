import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/features/bank_account/add/AddBankAccountPage.dart';
import 'package:mobarter/features/bank_account/bank_item.dart';
import 'package:mobarter/graphql/schema/bankAccount.gql.dart';
import 'package:mobarter/widgets/widgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class BankAccountPage extends StatelessWidget {
  const BankAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      context,
      title: "Bank Accounts",
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).primaryColor,
        ),
        child: IconButton(
          onPressed: () {
            pushScreen(
              context,
              screen: AddBankAccountPage(),
              withNavBar: false,
              pageTransitionAnimation: PageTransitionAnimation.slideUp,
            );
          },
          icon: Icon(Icons.add),
          color: Colors.white,
          iconSize: 25,
        ),
      ),
      body: BankAccountList(),
    );
  }
}

class BankAccountList extends HookWidget {
  const BankAccountList({super.key});

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

        return BankItem(item: item);
      },
    );
  }
}
