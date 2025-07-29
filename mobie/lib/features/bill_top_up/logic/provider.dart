import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_top_up/logic/notifier.dart';
import 'package:mobarter/features/bill_top_up/model/topData.dart';

final topUpDataProvider = StateNotifierProvider<TopUpDataNotifier, TopData>((
  ref,
) {
  return TopUpDataNotifier();
});

TopUpDataNotifier topUpRead(WidgetRef ref) {
  return ref.read(topUpDataProvider.notifier);
}

TopData topUpWatch(WidgetRef ref) {
  return ref.watch(topUpDataProvider);
}
