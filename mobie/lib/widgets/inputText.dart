import 'package:flutter/material.dart';

Widget textField({required String label}) {
  return TextField(
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
  );
}

Widget appButton({required String title}) {
  return ElevatedButton(onPressed: () {}, child: Text(title));
}
