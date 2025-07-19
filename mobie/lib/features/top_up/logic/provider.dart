import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/top_up/logic/notifier.dart';
import 'package:mobarter/features/top_up/model/topData.dart';

final topUpDataProvider = StateNotifierProvider<TopUpDataNotifier, TopData>((
  ref,
) {
  return TopUpDataNotifier();
});
