import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/widgets/widgets.dart';

class SelectBankAccount extends HookConsumerWidget {
  const SelectBankAccount({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return listTile(
      context,
      title: "Select Bank Account",
      subtitle: "Ensure it is your personal account",
    );
  }
}
