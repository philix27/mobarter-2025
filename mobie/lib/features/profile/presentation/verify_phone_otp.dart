import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/pinInput.dart';
import 'package:mobarter/widgets/toast.dart';

class VerifyPhoneOtp extends HookConsumerWidget {
  VerifyPhoneOtp({super.key});

  final TextEditingController pin = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
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
          btn(
            title: "Send",
            onPressed: () async {
              try {
                // todo
                // send info to backend
                require(pin.text.length == 6, "Invalid pin");

                // final user = auth.user();
                // await send(
                //   SendPaymentInput(
                //     pin: pin.text,
                //     tokenAddress: watch.address!,
                //     tokenChain: watch.chain!,
                //     user_uid: user!.uid,
                //   ),
                // ).then((onValu) {
                //   Navigator.of(context).pop();
                //   // Navigator.of(context).pop();
                // });
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
