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
        require(phone.text, "BVN needed");
        require(phone.text.length != 11, "BVN needed");

        await mutation
            .runMutation(
              Variables$Mutation$kyc_sendPhoneOtp(
                input: Input$Kyc_SendPhoneOtpInput(phone: phone.text),
              ),
            )
            .networkResult;

        r.updatePhone(phone.text);
        appToast(context, "Record submitted");
        Navigator.of(context).pop();
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
          maxLength: 11,
          controller: phone,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow digits only
            LengthLimitingTextInputFormatter(11), // Enforces the limit
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
