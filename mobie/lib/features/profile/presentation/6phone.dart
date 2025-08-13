import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobarter/widgets/inputText.dart';

class EnterPhone6 extends StatelessWidget {
  EnterPhone6({super.key});
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textField(
          context,
          label: 'Phone number',
          helperText: "Will be verified in the next step",
          maxLength: 11,
          controller: phone,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow digits only
            LengthLimitingTextInputFormatter(11), // Enforces the limit
          ],
        ),
      ],
    );
  }
}
