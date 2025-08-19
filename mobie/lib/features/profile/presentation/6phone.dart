import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/widgets.dart';

class EnterPhone6 extends HookConsumerWidget {
  EnterPhone6({super.key});
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final mutation = useMutation$kyc_sendPhoneOtp();

    submit() async {
      try {
        require(phone.text, "BVN needed");
        require(phone.text.length !=  11, "BVN needed");

        await mutation
            .runMutation(
              Variables$Mutation$kyc_sendPhoneOtp(
                input: Input$Kyc_SendPhoneOtpInput(phone: phone.text),
              ),
            )
            .networkResult;

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
          // helperText: "Will be verified in the next step",
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
