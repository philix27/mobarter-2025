import 'package:flutter/material.dart';
import 'package:mobarter/widgets/inputText.dart';

class EnterNames1 extends StatelessWidget {
  EnterNames1({super.key});
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController middleName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textField(
          context,
          label: 'First name',
          helperText: "Must match your NIN & BVN",
          maxLength: 50,
          controller: firstName,
          keyboardType: TextInputType.name,
        ),
        textField(
          context,
          label: 'Last name',
          helperText: "Must match your NIN & BVN",
          maxLength: 50,
          controller: lastName,
          keyboardType: TextInputType.name,
        ),
        textField(
          context,
          label: 'Middle name',
          helperText: "Must match your NIN & BVN",
          maxLength: 50,
          controller: middleName,
          keyboardType: TextInputType.name,
        ),
      ],
    );
  }
}
