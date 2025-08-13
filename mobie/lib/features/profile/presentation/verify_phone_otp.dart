import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/widgets.dart';

class VerifyPhoneOtp extends HookConsumerWidget {
  VerifyPhoneOtp({super.key, required this.cred});
  final Input$Kyc_verifyPhoneOtpAndSubmitCredentialsInput cred;

  final TextEditingController pin = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final kyc_verifyPhoneOtp =
        useMutation$kyc_verifyPhoneOtpAndSubmitCredentials();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
      child: Column(
        // spacing: 20,
        children: [
          Text(
            "Enter your pin to confirm transaction",
            style: textTheme(context).headlineMedium,
          ),
          SizedBox(height: 20),
          pinInput(
            context,
            length: 6,
            controller: pin,
            keyboardType: TextInputType.number,
            obscureText: true,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow digits only
              LengthLimitingTextInputFormatter(6), // Enforces the limit
            ],
            onCompleted: (pin) {
              if (kDebugMode) {
                print(pin);
              }
            },
          ),
          SizedBox(height: 35),
          Btn(
            title: "Send",
            onPressed: () async {
              try {
                // todo
                // send info to backend
                require(pin.text.length == 6, "Invalid pin");

                final response = await kyc_verifyPhoneOtp
                    .runMutation(
                      Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
                        input:
                            Input$Kyc_verifyPhoneOtpAndSubmitCredentialsInput(
                              bvn: cred.bvn,
                              country: Enum$Country.NG,
                              dob: cred.dob,
                              firstName: cred.firstName,
                              houseAddress: cred.houseAddress,
                              lastName: cred.lastName,
                              nin: cred.nin,
                              otp: cred.otp,
                              phone: cred.phone,
                              state: cred.state,
                              street: cred.street,
                              token: pin.text,
                            ),
                      ),
                    )
                    .networkResult;

                final res = response!
                    .parsedData
                    ?.kyc_verifyPhoneOtpAndSubmitCredentials;

                appToast(context, res!.message);

                Navigator.of(context).pop();
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
