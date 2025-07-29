import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_betting/logic/notifier.dart';
import 'package:mobarter/features/bill_betting/model/data.dart';

final bettingProvider =
    StateNotifierProvider<FundBettingWalletDataNotifier, FundBettingWalletData>(
      (ref) {
        return FundBettingWalletDataNotifier();
      },
    );

FundBettingWalletDataNotifier bettingRead(WidgetRef ref) {
  return ref.read(bettingProvider.notifier);
}

FundBettingWalletData bettingWatch(WidgetRef ref) {
  return ref.watch(bettingProvider);
}
