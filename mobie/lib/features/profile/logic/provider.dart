import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/logic/notifier.dart';

final kycProvider = StateNotifierProvider<KycFormNotifier, KycModel>((ref) {
  return KycFormNotifier();
});

KycFormNotifier kycFormRead(WidgetRef ref) {
  return ref.read(kycProvider.notifier);
}

KycModel kycFormWatch(WidgetRef ref) {
  return ref.watch(kycProvider);
}
