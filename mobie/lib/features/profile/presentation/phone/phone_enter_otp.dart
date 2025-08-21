import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/toast.dart';

class SendPhoneOtp extends HookConsumerWidget {
  SendPhoneOtp({super.key});
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final mutation = useMutation$kyc_sendPhoneOtp();
    final w = kycFormWatch(ref);
    final r = kycFormRead(ref);
    submit() async {
      try {
        require(phone.text, "Phone no needed");
        require(phone.text.length == 11, "Phone no needed");

        final response = await mutation
            .runMutation(
              Variables$Mutation$kyc_sendPhoneOtp(
                input: Input$Kyc_SendPhoneOtpInput(phone: phone.text),
              ),
            )
            .networkResult;
        validateGqlQuery(response);
        final otp = response!.parsedData?.kyc_sendPhoneOtp.otpToken;
        r.updatePhone(phone.text, otp!);
      } catch (e) {
        appToastErr(context, e.toString());
      }
    }

    return Column(
      spacing: 20,
      children: [
        textField(
          context,
          label: 'Phone number',
          hintText: "08101234567",
          maxLength: 11,
          controller: phone,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow digits only
            LengthLimitingTextInputFormatter(11), // Enforces the limit
          ],
        ),
        Btn(title: "Submit", onPressed: submit),
      ],
    );
  }
}
