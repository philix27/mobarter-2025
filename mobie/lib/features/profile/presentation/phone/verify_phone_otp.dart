import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/widgets.dart';

class VerifyPhoneOtp extends HookConsumerWidget {
  VerifyPhoneOtp({super.key, required this.phone, required this.token});
  final String token;
  final String phone;
  final TextEditingController pin = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final r = kycFormRead(ref);
    final kycVerifyphoneotp = useMutation$Kyc_verifyPhoneOtp();
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

                final response = await kycVerifyphoneotp
                    .runMutation(
                      Variables$Mutation$Kyc_verifyPhoneOtp(
                        input: Input$Kyc_verifyPhoneOtpAndInput(
                          otp: pin.text,
                          phone: pin.text,
                          token: pin.text,
                        ),
                      ),
                    )
                    .networkResult;

                validateGqlQuery(response);

                final res = response!.parsedData?.Kyc_verifyPhoneOtp;

                r.clearPhone();

                appToast(context, res!.message);
                Navigator.of(context).pop();
              } catch (e) {
                print("ErrX4 Result");
                print(e);
                appToastErr(context, e.toString());
              }
            },
          ),
        ],
      ),
    );
  }
}
