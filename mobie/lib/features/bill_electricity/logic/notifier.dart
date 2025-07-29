import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_electricity/model/data.dart';

class ElectricityBillDataNotifier extends StateNotifier<ElectricityBillData> {
  ElectricityBillDataNotifier()
    : super(
        ElectricityBillData(
          amountFiat: null,
          amountCrypto: null,
          providerName: null,
          providerImg: null,
          accountNo: '',
          isPrepaid: null,
          customerAddress: '',
          customerName: '',
        ),
      );

  void updateAccountNo(String accountNo) {
    state = state.copyWith(accountNo: accountNo);
  }

  void updateIsPrepaid(bool payload) {
    state = state.copyWith(isPrepaid: payload);
  }

  void updateAmount({
    required double amountFiat,
    required double amountCrypto,
  }) {
    state = state.copyWith(amountFiat: amountFiat, amountCrypto: amountCrypto);
  }

  void updateBilerType(String providerName, String img) {
    state = state.copyWith(providerName: providerName, providerImg: img);
  }

  void updateCustomerInfo(String name, String address) {
    state = state.copyWith(customerName: name, customerAddress: address);
  }
}
