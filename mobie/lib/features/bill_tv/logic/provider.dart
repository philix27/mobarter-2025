import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_tv/logic/notifier.dart';
import 'package:mobarter/features/bill_tv/logic/model.dart';

final tvBillProvider = StateNotifierProvider<TvBillsDataNotifier, TvBillsData>((
  ref,
) {
  return TvBillsDataNotifier();
});

TvBillsDataNotifier tvBillRead(WidgetRef ref) {
  return ref.read(tvBillProvider.notifier);
}

TvBillsData tvBillWatch(WidgetRef ref) {
  return ref.watch(tvBillProvider);
}
