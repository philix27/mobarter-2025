import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/features/profile/presentation/row_btn.dart';
import 'package:mobarter/widgets/widgets.dart';

class EnterBvn4 extends ConsumerWidget {
  EnterBvn4({super.key});
  TextEditingController bvn = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final read = kycFormRead(ref);
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
        BtnRow(
          onPrevPressed: () {
            read.updateStep(KycSteps.enterNames1);
          },
          onNextPressed: () {
            read.updateBvn(bvn.text);
            read.updateStep(KycSteps.address5);
          },
        ),
      ],
    );
  }
}
