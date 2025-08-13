import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobarter/widgets/inputText.dart';

class EnterNin3 extends StatelessWidget {
  EnterNin3({super.key});
  TextEditingController nin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textField(
          context,
          label: 'National Identity Number (NIN)',
          maxLength: 12,
          controller: nin,
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
