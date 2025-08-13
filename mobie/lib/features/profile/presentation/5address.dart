import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/features/profile/presentation/row_btn.dart';
import 'package:mobarter/widgets/widgets.dart';

class HomeAddress5 extends ConsumerWidget {
  HomeAddress5({super.key});
  TextEditingController homeAddress = TextEditingController();
  TextEditingController stateAddress = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final read = kycFormRead(ref);
    return Column(
      spacing: 20,
      children: [
        textField(
          context,
          label: 'State',
          maxLength: 100,
          controller: stateAddress,
          keyboardType: TextInputType.streetAddress,
        ),
        textField(
          context,
          label: 'Home Address',
          maxLength: 100,
          controller: homeAddress,
          keyboardType: TextInputType.streetAddress,
        ),
        BtnRow(
          onPrevPressed: () {
            read.updateStep(KycSteps.bvn4);
          },
          onNextPressed: () {
            read.updateAddress(
              street: homeAddress.text,
              addressState: stateAddress.text,
            );
            read.updateStep(KycSteps.phone6);
          },
        ),
      ],
    );
  }
}
