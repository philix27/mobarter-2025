import 'package:flutter/material.dart';
import 'package:mobarter/features/bank_account/add/accountName.dart';
import 'package:mobarter/features/bank_account/add/accountNo.dart';
import 'package:mobarter/features/bank_account/add/selectBank.dart';
import 'package:mobarter/widgets/widgets.dart';

class AddBankAccountPage extends StatelessWidget {
  const AddBankAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          BanksList(),
          AccountNo(),
          AccountName(),
          SizedBox(height: 20),
          btn(title: "Add"),
        ],
      ),
    );
  }
}
