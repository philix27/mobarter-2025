import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/features/profile/presentation/row_btn.dart';
import 'package:mobarter/widgets/widgets.dart';

class SelectDob2 extends ConsumerWidget {
  SelectDob2({super.key});
  TextEditingController dob = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final read = kycFormRead(ref);
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
        BtnRow(
          onPrevPressed: () {
            read.updateStep(KycSteps.enterNames1);
          },
          onNextPressed: () {
            read.updateDob(dob.text);
            read.updateStep(KycSteps.nin3);
          },
        ),
      ],
    );
  }
}
