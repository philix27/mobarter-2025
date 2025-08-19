import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/widgets/widgets.dart';

class EnterNames1 extends ConsumerWidget {
  EnterNames1({super.key});
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController middleName = TextEditingController();
  TextEditingController dob = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final read = kycFormRead(ref);
    return Column(
      spacing: 20,
      children: [
        textField(
          context,
          label: 'First name',
          maxLength: 50,
          controller: firstName,
          keyboardType: TextInputType.name,
        ),
        textField(
          context,
          label: 'Last name',
          maxLength: 50,
          controller: lastName,
          keyboardType: TextInputType.name,
        ),
        textField(
          context,
          label: 'Middle name',
          maxLength: 50,
          controller: middleName,
          keyboardType: TextInputType.name,
        ),
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
        Btn(
          title: "Submit",
          onPressed: () {
            appToast(context, "Submitted successfully");
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
