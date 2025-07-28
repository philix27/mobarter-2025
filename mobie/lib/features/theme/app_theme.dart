import 'package:flutter/material.dart';
import 'package:mobarter/features/theme/switchTheme.dart';
import 'package:mobarter/features/theme/textThemes.dart';

// final colorPrimary = Colors.deepOrange;
// final colorText = Colors.black38;
// final colorMuted = Colors.black26;
final colorPrimaryLight = const Color.fromARGB(255, 255, 159, 129);
// final colorCard = Colors.grey.shade200;

class AppTheme {
  static final light = ThemeData(
    cardColor: Colors.grey.shade200,
    primaryColor: Colors.deepOrange,
    indicatorColor: Colors.deepOrange,
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.white,
    highlightColor: colorPrimaryLight,
    switchTheme: switchThemeLight,
    textTheme: textThemeLight,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black87,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    listTileTheme: ListTileThemeData(
      tileColor: Colors.grey.shade300,
      style: ListTileStyle.list,
    ),
    hintColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black87),
  );

  static final dark = ThemeData(
    cardColor: Colors.grey.shade800,
    primaryColor: Colors.deepOrange,
    indicatorColor: Colors.deepOrange,
    scaffoldBackgroundColor: Colors.black,
    canvasColor: Colors.black54,
    highlightColor: colorPrimaryLight,
    textTheme: textThemeDark,
    hintColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.black54,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    listTileTheme: ListTileThemeData(
      tileColor: Colors.grey.shade800,
      style: ListTileStyle.list,
    ),
    cardTheme: CardThemeData(color: Colors.black54),
    switchTheme: switchThemeDark,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderSide: BorderSide(width: 0.4)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 0.8, color: Colors.deepOrange),
      ),
      enabledBorder: OutlineInputBorder(),
      fillColor: Colors.grey.shade800,
      focusColor: Colors.grey.shade800,
      helperStyle: TextStyle(color: Colors.grey),
      labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
      floatingLabelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
    ),
    iconTheme: IconThemeData(color: Colors.white70),
  );
}
