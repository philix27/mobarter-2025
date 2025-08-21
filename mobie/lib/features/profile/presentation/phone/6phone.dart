import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/features/profile/presentation/phone/phone_no.dart';
import 'package:mobarter/features/profile/presentation/phone/verify_phone_otp.dart';

class EnterPhone6 extends ConsumerWidget {
  EnterPhone6({super.key});
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final w = kycFormWatch(ref);

    return Column(
      spacing: 20,
      children: [
        w.phoneValidationStep == PhoneValidationStep.enterPhoneNo
            ? SendPhoneOtp()
            : VerifyPhoneOtp(),
      ],
    );
  }
}
