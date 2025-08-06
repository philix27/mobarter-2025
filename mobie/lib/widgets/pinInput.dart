import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

Widget pinInput(
  BuildContext context, {
  TextInputType? keyboardType,
  required List<TextInputFormatter> inputFormatters,
  required int length,
  String? helperText,
  TextEditingController? controller,
  void Function(String)? onCompleted,
  bool? obscureText,
}) {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w400,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Theme.of(context).disabledColor),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: Theme.of(context).primaryColor),
    borderRadius: BorderRadius.circular(8),
  );

  final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: Theme.of(context).cardColor,
      border: Border.all(color: Theme.of(context).highlightColor),
    ),
  );

  return Pinput(
    defaultPinTheme: defaultPinTheme,
    focusedPinTheme: focusedPinTheme,
    submittedPinTheme: submittedPinTheme,
    length: length,
    controller: controller,
    keyboardType: TextInputType.number,
    pinAnimationType: PinAnimationType.slide,
    inputFormatters: inputFormatters,
    onCompleted: onCompleted,
    obscureText: obscureText ?? false,
  );
}
