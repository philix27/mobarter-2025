import 'package:flutter/material.dart';
import 'package:mobarter/features/theme/constColors.dart';
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
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
    decoration: InputDecoration(
      labelText: label,
      helperText: helperText,
      fillColor: Colors.grey.shade200,
      focusColor: Colors.deepOrange,
      contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 0.8, color: Colors.grey.shade200),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.deepOrange),
      ),
      filled: true,
      //   helperStyle: TextStyle(color: Colors.grey),
      labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      floatingLabelStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w300,
        // color: Colors.deepOrange,
      ),
    ),
  );
}

Widget appButton({required String title}) {
  return ElevatedButton(onPressed: () {}, child: Text(title));
}
