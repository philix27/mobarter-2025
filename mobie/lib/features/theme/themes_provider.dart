import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeStateNotifier = ChangeNotifierProvider((ref) => AppThemeState());

AppThemeState themeWatch(WidgetRef ref) {
  return ref.watch(themeStateNotifier);
}

class AppThemeState extends ChangeNotifier {
  bool isDarkModeEnabled = false;

  void setLightTheme() {
    isDarkModeEnabled = false;
    notifyListeners();
  }

  void setDarkTheme() {
    isDarkModeEnabled = true;
    notifyListeners();
  }

  void toggleTheme() {
    isDarkModeEnabled = !isDarkModeEnabled;
    notifyListeners();
  }
}
