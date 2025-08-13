import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/features/profile/presentation/row_btn.dart';
import 'package:mobarter/widgets/widgets.dart';

class EnterNin3 extends ConsumerWidget {
  EnterNin3({super.key});
  TextEditingController nin = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final read = kycFormRead(ref);
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
        BtnRow(
          onPrevPressed: () {
            read.updateStep(KycSteps.selectDob2);
          },
          onNextPressed: () {
            read.updateDob(nin.text);
            read.updateStep(KycSteps.bvn4);
          },
        ),
      ],
    );
  }
}
