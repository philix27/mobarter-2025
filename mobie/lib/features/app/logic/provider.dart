import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/app/logic/notifier.dart';
import 'package:mobarter/features/app/model/appCredentials.dart';

final appCredentialsProvider =
    StateNotifierProvider<AppCrendentialsNotifier, AppCredentials>((ref) {
      return AppCrendentialsNotifier();
    });

AppCrendentialsNotifier appCredentialsRead(WidgetRef ref) {
  return ref.read(appCredentialsProvider.notifier);
}

AppCredentials appCredentialsWatch(WidgetRef ref) {
  return ref.watch(appCredentialsProvider);
}
