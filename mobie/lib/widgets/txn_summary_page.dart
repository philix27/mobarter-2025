import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';

class TxnSummaryPage extends HookConsumerWidget {
  final List<Widget> childeren;
  void Function(Input$PaymentInput paylod) send;

  TxnSummaryPage({super.key, required this.childeren, required this.send});

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
            ...this.childeren,
            btn(
              title: "Send",
              onPressed: () {
                btmSheet(
                  ctx: context,
                  w: _EnterPinAndSubmit(send: this.send),
                  // h: 0.5,
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
  void Function(Input$PaymentInput paylod) send;

  final TextEditingController pin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        appText("Enter your pin to confirm transaction"),
        textField(context,
          label: 'Enter Transaction Pin',
          maxLength: 6,
          controller: pin,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow digits only
            LengthLimitingTextInputFormatter(6), // Enforces the limit
          ],
        ),
        btn(
          title: "Send",
          onPressed: () {
            if (pin.text.length < 6) {
              appToast(context, "Minimum of 6 characters");
              return;
            }

            send(
              Input$PaymentInput(
                transaction_pin: pin.text,
                user_uid: "user_uid",
              ),
            );
          },
        ),
      ],
    );
  }
}
