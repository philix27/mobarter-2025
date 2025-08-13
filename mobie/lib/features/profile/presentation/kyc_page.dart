import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/features/profile/presentation/1enter_names.dart';
import 'package:mobarter/features/profile/presentation/2select_dob.dart';
import 'package:mobarter/features/profile/presentation/3nin.dart';
import 'package:mobarter/features/profile/presentation/4bvn.dart';
import 'package:mobarter/features/profile/presentation/5address.dart';
import 'package:mobarter/features/profile/presentation/6phone.dart';
import 'package:mobarter/features/profile/presentation/verify_phone_otp.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/widgets/widgets.dart';

class KycPage extends HookWidget {
  KycPage({super.key});
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final kycSendPhoneOtp = useMutation$kyc_sendPhoneOtp();

    return appScaffold(
      context,
      title: "KYC Verification",
      body: Column(
        spacing: 14,
        children: [
          EnterNames1(),
          SelectDob2(),
          EnterNin3(),
          EnterBvn4(),
          HomeAddress5(),
          EnterPhone6(),
          btn(
            title: "Submit",
            loading: kycSendPhoneOtp.result.isLoading,
            onPressed: () async {
              try {
                final response = await kycSendPhoneOtp
                    .runMutation(
                      Variables$Mutation$kyc_sendPhoneOtp(
                        input: Input$Kyc_SendPhoneOtpInput(phone: phone.text),
                      ),
                    )
                    .networkResult;

                final res = response!.parsedData?.kyc_sendPhoneOtp;

                appToast(context, res!.message);
                // todo
                // validate form and display error where necessary
                // send phone no
                // await with loading indicator
                // retrieve otp token
                // open bottomSheet
                // todo
                // display bottom sheet with OTP input
                // btmSheet(
                //   h: 0.65,
                //   ctx: context,
                //   w: VerifyPhoneOtp(
                //     cred: Input$Kyc_verifyPhoneOtpAndSubmitCredentialsInput(
                //       country: Enum$Country.NG,
                //       firstName: firstName.text,
                //       houseAddress: homeAddress.text,
                //       lastName: lastName.text,
                //       dob: dob.text,
                //       nin: nin.text,
                //       bvn: bvn.text,
                //       phone: phone.text,
                //       state: stateAddress.text,
                //       street: homeAddress.text,
                //       otp: "",
                //       token: res.otpToken,
                //     ),
                //   ),
                // );
              } catch (e) {
                appToastErr(context, e.toString());
              }
            },
          ),
        ],
      ),
    );
  }
}
