import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/features/auth/wallet_service.dart';
import 'package:mobarter/features/onboarding/pinsetup.service.dart';
import 'package:mobarter/features/onboarding/questionsList.dart';
import 'package:mobarter/utils/logger.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/btn.dart';

import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';

class SetupTxnPinPage extends StatefulWidget {
  const SetupTxnPinPage({super.key});

  @override
  State<SetupTxnPinPage> createState() => _SetupTxnPinPageState();
}

class _SetupTxnPinPageState extends State<SetupTxnPinPage> {
  String questionSelected = "";
  TextEditingController answer = TextEditingController();
  TextEditingController txnPin = TextEditingController();
  TextEditingController txnPinConfirm = TextEditingController();
  final setUpPin = PinSetupService();
  final authSvc = AuthService();
  final cryptoSvc = CryptoWalletService();

  validate() async {
    final pin = txnPin.text;
    final pinC = txnPinConfirm.text;
    if (answer.text.isEmpty || questionSelected.isEmpty) {
      apptToast(context, "Answer is needed");
      return;
    }

    if (pin.length < 6 || pinC.length < 6) {
      apptToast(context, "Minimum of 6 characters");
      return;
    }
    if (pin != pinC) {
      apptToast(context, "Password doesn't match");
      return;
    }

    try {
      await setUpPin.submit(
        question: questionSelected,
        answer: answer.text,
        pin: pin,
        userId: authSvc.user()!.uid,
      );
      apptToast(context, "Your pin has been succcessfully setup");
      Navigator.of(context).pushNamed("/home");
    } catch (e) {
      apptToast(context, "$e");
      appLogger.e("Error in creating wallet:  $e");
      Navigator.of(context).pushNamed("/home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      title: "Password Setup",
      automaticallyImplyLeading: false,
      body: Column(
        spacing: 20,
        children: [
          listTile(
            title: questionSelected.isEmpty
                ? "Pick a secret question"
                : questionSelected,
            subtitle: !questionSelected.isEmpty
                ? "Pick a secret question"
                : null,
            onTap: () {
              btmSheet(
                ctx: context,
                w: ListView.builder(
                  itemCount: questionsList.length,
                  itemBuilder: (context, index) {
                    final title = questionsList[index];
                    return listTile(
                      title: title,
                      onTap: () {
                        setState(() {
                          questionSelected = title;
                        });
                      },
                    );
                  },
                ),
                h: 0.65,
              );
            },
          ),
          textField(
            label: 'Secret answer',
            maxLength: 25,
            helperText: "An answer only you will know",
            controller: answer,
          ),
          SizedBox(height: 20),
          Text(
            "Pin Set up",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          ),
          textField(
            label: 'Enter Transaction Pin',
            helperText: "Will be used for every transaction",
            maxLength: 6,
            controller: txnPin,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow digits only
              LengthLimitingTextInputFormatter(6), // Enforces the limit
            ],
          ),
          textField(
            label: 'Confirm Transaction Pin',
            helperText: "Please do not forget your pin",
            maxLength: 6,
            controller: txnPinConfirm,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow digits only
              LengthLimitingTextInputFormatter(6), // Enforces the limit
            ],
          ),
          btn(title: "Submit", onPressed: validate),
        ],
      ),
    );
  }
}

class SecretQuestion extends StatelessWidget {
  SecretQuestion({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: questionsList.length,
      itemBuilder: (context, index) {
        final title = questionsList[index];
        return listTile(title: title);
      },
    );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   return FutureBuilder(
  //     future: questionsSvc.getQuestions(),
  //     builder: (BuildContext context, AsyncSnapshot<List<String>?> snapshot) {
  //       if (!snapshot.hasData) return SizedBox.shrink();
  //       final data = snapshot.data!;
  //       return ListView.builder(
  //         itemCount: data.length,
  //         itemBuilder: (context, index) {
  //           final title = data[index];
  //           return listTile(title: title);
  //         },
  //       );
  //     },
  //   );
  // }