import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';

Widget textField({required String label}) {
  return TextField(
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
      fillColor: colorCard,
      focusColor: colorCard,
    ),
  );
}

Widget appButton({required String title}) {
  return ElevatedButton(onPressed: () {}, child: Text(title));
}
