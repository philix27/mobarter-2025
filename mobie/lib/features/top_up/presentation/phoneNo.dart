import 'package:flutter/material.dart';
import 'package:mobarter/widgets/inputText.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return textField(label: 'Phone No.');
  }
}
