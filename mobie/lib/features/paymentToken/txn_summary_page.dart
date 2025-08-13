import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/features/paymentToken/logic/provider.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/widgets.dart';

class SendPaymentInput {
  final String pin;
  final String tokenAddress;
  final String tokenChain;
  final String user_uid;

  SendPaymentInput({
    required this.pin,
    required this.tokenAddress,
    required this.tokenChain,
    required this.user_uid,
  });
}

class TxnSummaryPage extends HookConsumerWidget {
  final List<Widget> children;
  final double cryptoAmountToPay;
  Future<void> Function(SendPaymentInput input) send;

  TxnSummaryPage({
    super.key,
    required this.children,
    required this.send,
    required this.cryptoAmountToPay,
  });

  @override
  Widget build(BuildContext context, ref) {
    final watch = paymentTokenWatch(ref);

    return appScaffold(
      context,
      title: "Transaction Summary",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          spacing: 18,
          children: [
            ...this.children,
            SelectPaymentToken(cryptoAmountToPay: cryptoAmountToPay),
            SizedBox(height: 20),
            Btn(
              title: "Confirm",
              onPressed: watch.address == null
                  ? null
                  : () {
                      try {
                        require(
                          watch.address,
                          "Please select token you wish to use for payment",
                        );
                        require(
                          watch.name,
                          "Please select token you wish to use for payment",
                        );

                        btmSheet(
                          h: 0.65,
                          ctx: context,
                          w: _EnterPinAndSubmit(send: this.send),
                        );
                      } catch (e) {
                        appToastErr(context, e.toString());
                      }
                    },
            ),
          ],
        ),
      ),
    );
  }
}

class _EnterPinAndSubmit extends ConsumerWidget {
  _EnterPinAndSubmit({super.key, required this.send});
  Future<void> Function(SendPaymentInput paylod) send;

  final TextEditingController pin = TextEditingController();
  final AuthService auth = AuthService();

  @override
  void dispose() {
    pin.dispose(); // 👈 Clean up the controller when widget is removed
  }

  @override
  Widget build(BuildContext context, ref) {
    final watch = paymentTokenWatch(ref);

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
                print("Submitted");
              }
            },
          ),
          SizedBox(height: 35),
          Btn(
            title: "Send",
            onPressed: () async {
              try {
                require(pin.text.length == 6, "Invalid pin");

                final user = auth.user();
                await send(
                  SendPaymentInput(
                    pin: pin.text,
                    tokenAddress: watch.address!,
                    tokenChain: watch.chain!,
                    user_uid: user!.uid,
                  ),
                ).then((onValu) {
                  Navigator.of(context).pop();
                  // Navigator.of(context).pop();
                });
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
