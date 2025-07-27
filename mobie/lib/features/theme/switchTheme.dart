import 'package:flutter/material.dart';

final SwitchThemeData switchThemeLight = SwitchThemeData(
  trackColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
    if (states.contains(WidgetState.disabled)) {
      return Colors.black26;
    }
    return Colors.grey;
  }),
  thumbColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
    if (states.contains(WidgetState.disabled)) {
      return Colors.black26;
    }
    return Colors.deepOrange;
  }),
  trackOutlineWidth: WidgetStateProperty.resolveWith<double?>((
    Set<WidgetState> states,
  ) {
     return 0; // Use the default width.
  }),
);
final SwitchThemeData switchThemeDark = SwitchThemeData(
  trackColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
    if (states.contains(WidgetState.disabled)) {
      return Colors.black26;
    }
    return Colors.grey;
  }),
  thumbColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
    if (states.contains(WidgetState.disabled)) {
      return Colors.black26;
    }
    return Colors.deepOrange;
  }),
  trackOutlineWidth: WidgetStateProperty.resolveWith<double?>((
    Set<WidgetState> states,
  ) {
    return 0; // Use the default width.
  }),
);
