import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/features/profile/presentation/verify_phone_otp.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/widgets/widgets.dart';

class KycPage extends HookWidget {
  KycPage({super.key});
  TextEditingController phone = TextEditingController();
  TextEditingController nin = TextEditingController();
  TextEditingController bvn = TextEditingController();
  TextEditingController homeAddress = TextEditingController();
  TextEditingController stateAddress = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController middleName = TextEditingController();
  TextEditingController dob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final kycSendPhoneOtp = useMutation$kyc_sendPhoneOtp();

    return appScaffold(
      context,
      title: "KYC Verification",
      body: Column(
        spacing: 20,
        children: [
          textField(
            context,
            label: 'First name',
            helperText: "Must match your NIN & BVN",
            maxLength: 50,
            controller: firstName,
            keyboardType: TextInputType.name,
          ),
          textField(
            context,
            label: 'Last name',
            helperText: "Must match your NIN & BVN",
            maxLength: 50,
            controller: lastName,
            keyboardType: TextInputType.name,
          ),
          textField(
            context,
            label: 'Middle name',
            helperText: "Must match your NIN & BVN",
            maxLength: 50,
            controller: middleName,
            keyboardType: TextInputType.name,
          ),
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
          textField(
            context,
            label: 'Phone number',
            helperText: "Will be verified in the next step",
            maxLength: 11,
            controller: phone,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow digits only
              LengthLimitingTextInputFormatter(11), // Enforces the limit
            ],
          ),
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
          textField(
            context,
            label: 'Bank Verification No (BVN)',
            maxLength: 12,
            controller: phone,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow digits only
              LengthLimitingTextInputFormatter(12), // Enforces the limit
            ],
          ),
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
                btmSheet(
                  h: 0.65,
                  ctx: context,
                  w: VerifyPhoneOtp(
                    cred: Input$Kyc_verifyPhoneOtpAndSubmitCredentialsInput(
                      country: Enum$Country.NG,
                      firstName: firstName.text,
                      houseAddress: homeAddress.text,
                      lastName: lastName.text,
                      dob: dob.text,
                      nin: nin.text,
                      bvn: bvn.text,
                      phone: phone.text,
                      state: stateAddress.text,
                      street: homeAddress.text,
                      otp: "",
                      token: res.otpToken,
                    ),
                  ),
                );
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
