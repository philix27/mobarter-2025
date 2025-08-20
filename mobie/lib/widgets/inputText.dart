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
  String? hintText,
  TextEditingController? controller,
  String? errorText,
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

        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          // labelText: label,
          helperText: helperText,
          fillColor: Theme.of(context).cardColor,
          focusColor: Theme.of(context).cardColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          errorText: errorText,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).disabledColor,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(5),
          //   borderSide: BorderSide(
          //     width: 0.2,
          //     style: BorderStyle.none,
          //     color: Theme.of(context).disabledColor,
          //   ),
          // ),
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
