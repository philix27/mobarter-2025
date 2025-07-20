import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/app/model/appCredentials.dart';

class AppCrendentialsNotifier extends StateNotifier<AppCredentials> {
  AppCrendentialsNotifier() : super(AppCredentials(serverToken: null));

  void updateServerToken(String token) {
    state = state.copyWith(serverToken: token);
  }
}
