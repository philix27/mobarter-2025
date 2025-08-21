import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bank_account/presentation/bank_list.dart';
import 'package:mobarter/features/orders/orders_sell/logic/provider.dart';
import 'package:mobarter/widgets/widgets.dart';

class SelectBankAccount extends HookConsumerWidget {
  const SelectBankAccount({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final r = sellOrderRead(ref);
    final w = sellOrderWatch(ref);
    return listTile(
      context,
      label: "Select Bank Account",
      title: w.bankAccount == null
          ? "Select"
          : "${w.bankAccount!.accountName} | ${w.bankAccount!.accountNo}",
      subtitle: w.bankAccount == null
          ? "Ensure it is your personal account"
          : "${w.bankAccount!.bankName}",
      onTap: () {
        btmSheet(
          ctx: context,
          w: BankAccountList(
            onAddBank: (bank) {
              r.updateBank(bank);
              Navigator.of(context).pop();
            },
          ),
        );
      },
    );
  }
}
