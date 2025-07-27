import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:flutter/services.dart';

Widget textField({
  required String label,
  TextInputType? keyboardType,
  List<TextInputFormatter>? inputFormatters,
  int? maxLength,
  String? helperText,
  TextEditingController? controller,
  Function(String)? onChanged,
}) {
  return TextField(
    maxLength: maxLength,
    keyboardType: keyboardType,
    inputFormatters: inputFormatters,
    controller: controller,
    onChanged: onChanged,
    decoration: InputDecoration(
      labelText: label,
      helperText: helperText,
      // focusedBorder: OutlineInputBorder(),
      // enabledBorder: OutlineInputBorder(),
      fillColor: Colors.grey.shade800,
      focusColor: Colors.grey.shade800,
      border: OutlineInputBorder(),
      //
      helperStyle: TextStyle(color: Colors.grey),
      labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      floatingLabelStyle: TextStyle(
        fontSize: 12.5,
        fontWeight: FontWeight.w300,
      ),
      // fillColor: colorCard,
      // focusColor: colorCard,
      // helperStyle: TextStyle(color: Colors.grey),
    ),
  );
}

Widget appButton({required String title}) {
  return ElevatedButton(onPressed: () {}, child: Text(title));
}
