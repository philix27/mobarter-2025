import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/pinInput.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:pinput/pinput.dart';

class TxnSummaryPage extends HookConsumerWidget {
  final List<Widget> children;
  void Function(String pin) send;

  TxnSummaryPage({super.key, required this.children, required this.send});

  @override
  Widget build(BuildContext context, ref) {
    return appScaffold(
      context,
      title: "Transaction Summary",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          spacing: 18,
          children: [
            ...this.children,
            btn(
              title: "Confirm",
              onPressed: () {
                btmSheet(
                  h: 0.4,
                  ctx: context,
                  w: _EnterPinAndSubmit(send: this.send),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _EnterPinAndSubmit extends StatelessWidget {
  _EnterPinAndSubmit({super.key, required this.send});
  void Function(String paylod) send;

  final TextEditingController pin = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {
              if (pin.text.length < 6) {
                appToast(context, "Minimum of 6 characters");
                return;
              }
              send(pin.text);
            },
          ),
        ],
      ),
    );
  }
}
