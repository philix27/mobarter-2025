import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/paymentToken/logic/notifier.dart';
import 'package:mobarter/features/paymentToken/model/data.dart';

final paymentTokenProvider =
    StateNotifierProvider<PaymentTokenDataNotifier, PaymentTokenData>((ref) {
      return PaymentTokenDataNotifier();
    });

PaymentTokenDataNotifier paymentTokenRead(WidgetRef ref) {
  return ref.read(paymentTokenProvider.notifier);
}

PaymentTokenData paymentTokenWatch(WidgetRef ref) {
  return ref.watch(paymentTokenProvider);
}
