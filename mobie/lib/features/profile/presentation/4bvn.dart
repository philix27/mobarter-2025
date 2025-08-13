import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobarter/widgets/inputText.dart';

class EnterBvn4 extends StatelessWidget {
  EnterBvn4({super.key});
  TextEditingController bvn = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textField(
          context,
          label: 'Bank Verification No (BVN)',
          maxLength: 12,
          controller: bvn,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow digits only
            LengthLimitingTextInputFormatter(12), // Enforces the limit
          ],
        ),
      ],
    );
  }
}
