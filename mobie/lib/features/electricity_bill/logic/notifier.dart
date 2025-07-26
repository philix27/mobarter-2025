import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/electricity_bill/model/topData.dart';

class ElectricityBillDataNotifier extends StateNotifier<ElectricityBillData> {
  ElectricityBillDataNotifier()
    : super(
        ElectricityBillData(
          amountFiat: null,
          amountCrypto: null,
          providerName: null,
          providerImg: null,
          accountNo: '',
        ),
      );

  void updateAccountNo(String accountNo) {
    state = state.copyWith(accountNo: accountNo);
  }

  void updateAmountFiat(double amountFiat) {
    state = state.copyWith(amountFiat: amountFiat);
  }

  void updateAmountCrypto(double amountCrypto) {
    state = state.copyWith(amountCrypto: amountCrypto);
  }

  void updateBilerType(String providerName, String img) {
    state = state.copyWith(providerName: providerName, providerImg: img);
  }
}
