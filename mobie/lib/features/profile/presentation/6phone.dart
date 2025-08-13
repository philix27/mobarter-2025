import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/features/profile/presentation/row_btn.dart';
import 'package:mobarter/widgets/widgets.dart';

class EnterPhone6 extends ConsumerWidget {
  EnterPhone6({super.key});
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final read = kycFormRead(ref);
    return Column(
      spacing: 20,
      children: [
        textField(
          context,
          label: 'Phone number',
          // helperText: "Will be verified in the next step",
          maxLength: 11,
          controller: phone,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow digits only
            LengthLimitingTextInputFormatter(11), // Enforces the limit
          ],
        ),
        BtnRow(
          onPrevPressed: () {
            read.updateStep(KycSteps.address5);
          },
          onNextPressed: () {
            read.updateDob(phone.text);
            read.updateStep(KycSteps.summary7);
          },
        ),
      ],
    );
  }
}
