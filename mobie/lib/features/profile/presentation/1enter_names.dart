import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/widgets/widgets.dart';

class EnterNames1 extends ConsumerWidget {
  EnterNames1({super.key});
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController middleName = TextEditingController();
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
        Btn(
          title: "Next",
          onPressed: () {
            read.updateNames(
              firstName: firstName.text,
              lastName: lastName.text,
              middleName: middleName.text,
            );
            read.updateStep(KycSteps.selectDob2);
          },
        ),
      ],
    );
  }
}
