import 'package:flutter/material.dart';

final TextTheme textThemeLight = TextTheme(
  titleMedium: TextStyle(fontSize: 12.0, color: Colors.black87),
  headlineMedium: TextStyle(
    fontSize: 14,
    color: Colors.black87,
    fontWeight: FontWeight.bold,
  ),
  bodyLarge: TextStyle(
    color: Colors.black87,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  ),
  bodyMedium: TextStyle(
    fontSize: 14.0,
    color: Colors.black54,
    fontWeight: FontWeight.bold,
  ),
  bodySmall: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  ),
);

final TextTheme textThemeDark = TextTheme(
  titleMedium: TextStyle(fontSize: 12.0, color: Colors.white),
  headlineMedium: TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  ),
  bodyLarge: TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  ),
  bodyMedium: TextStyle(fontSize: 14.0, color: Colors.white),
  bodySmall: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: Colors.grey.shade300,
  ),
);
