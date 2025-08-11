import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bank_account/logic/model.dart';

class BankAccountNotifier extends StateNotifier<BankAccountModel> {
  BankAccountNotifier()
    : super(
        BankAccountModel(
          accountNo: null,
          accountName: null,
          bankName: null,
          bankCode: null,
        ),
      );

  void updateName(String accountName) {
    state = state.copyWith(accountName: accountName);
  }

  void updateNo(String accountNo) {
    state = state.copyWith(accountNo: accountNo);
  }

  void updateBankInfo({required String name, required String code}) {
    // if (amountCrypto <= 0) return;
    state = state.copyWith(bankName: name, bankCode: code);
  }

  void clear() {
    // if (amountCrypto <= 0) return;
    state = state.copyWith(
      accountNo: null,
      accountName: null,
      bankName: null,
      bankCode: null,
    );
  }
}
