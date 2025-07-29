import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_electricity/logic/notifier.dart';
import 'package:mobarter/features/bill_electricity/model/data.dart';

final electricityBillProvider =
    StateNotifierProvider<ElectricityBillDataNotifier, ElectricityBillData>((
      ref,
    ) {
      return ElectricityBillDataNotifier();
    });

ElectricityBillDataNotifier electricBillRead(WidgetRef ref) {
  return ref.read(electricityBillProvider.notifier);
}

ElectricityBillData electricBillWatch(WidgetRef ref) {
  return ref.watch(electricityBillProvider);
}
