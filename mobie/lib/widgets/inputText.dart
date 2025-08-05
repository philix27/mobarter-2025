import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';

Widget textField(
  BuildContext context, {
  required String label,
  TextInputType? keyboardType,
  List<TextInputFormatter>? inputFormatters,
  int? maxLength,
  String? helperText,
  TextEditingController? controller,
  Function(String)? onChanged,
}) {
  return Column(
    children: [
      Row(children: [Text(label, style: textTheme(context).bodyMedium)]),
      SizedBox(height: 5),
      TextField(
        maxLength: maxLength,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        controller: controller,
        onChanged: onChanged,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          // labelText: label,
          helperText: helperText,
          fillColor: Theme.of(context).cardColor,
          focusColor: Colors.deepOrange,
          contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Theme.of(context).cardColor,
            ),
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
      ),
      SizedBox(height: 0),
    ],
  );
}

Widget appButton({required String title}) {
  return ElevatedButton(onPressed: () {}, child: Text(title));
}
