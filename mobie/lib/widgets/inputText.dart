import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:flutter/services.dart';

Widget textField({
  required String label,
  TextInputType? keyboardType,
  List<TextInputFormatter>? inputFormatters,
  int? maxLength,
  String? helperText,
}) {
  return TextField(
    maxLength: maxLength,
    keyboardType: keyboardType,
    inputFormatters: inputFormatters,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
      fillColor: colorCard,
      focusColor: colorCard,
      helperText: helperText,
      helperStyle: TextStyle(color: Colors.grey),
    ),
  );
}

Widget appButton({required String title}) {
  return ElevatedButton(onPressed: () {}, child: Text(title));
}
