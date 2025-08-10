import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bank_account/logic/bank_account_model.dart';
import 'package:mobarter/features/bank_account/logic/notifier.dart';

final bankAccountProvider =
    StateNotifierProvider<BankAccountNotifier, BankAccountModel>((ref) {
      return BankAccountNotifier();
    });

BankAccountNotifier bankRead(WidgetRef ref) {
  return ref.read(bankAccountProvider.notifier);
}

BankAccountModel bankWatch(WidgetRef ref) {
  return ref.watch(bankAccountProvider);
}
