import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_tv/model/data.dart';

class TvBillsDataNotifier extends StateNotifier<TvBillsData> {
  TvBillsDataNotifier()
    : super(
        TvBillsData(
          amountFiat: null,
          amountCrypto: null,
          providerName: null,
          providerImg: null,
          bouquetName: null,
          customerName: null,
          smartCardNo: '',
        ),
      );

  void updateCustomerName(String customerName) {
    state = state.copyWith(customerName: customerName);
  }
  void updateSmartCardNo(String smartCardNo) {
    state = state.copyWith(smartCardNo: smartCardNo);
  }

  void updateAmountFiat(double amountFiat) {
    state = state.copyWith(amountFiat: amountFiat);
  }

  void updateAmountCrypto({required double amountCrypto, required double amountFia}) {
    state = state.copyWith(amountCrypto: amountCrypto, amountFiat: amountFia);
  }

  void updateProvider(String providerName, String img) {
    state = state.copyWith(providerName: providerName, providerImg: img);
  }
  void updateBouquet(String bouquet) {
    state = state.copyWith(bouquetName: bouquet);
  }
}
