import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobarter/widgets/inputText.dart';

class SelectDob2 extends StatelessWidget {
  SelectDob2({super.key});
  TextEditingController dob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textField(
          context,
          label: 'Date of Birth',
          maxLength: 6,
          controller: dob,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow digits only
            LengthLimitingTextInputFormatter(6), // Enforces the limit
          ],
        ),
      ],
    );
  }
}
