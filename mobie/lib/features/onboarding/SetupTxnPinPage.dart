import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/features/auth/auth_service.dart';
// import 'package:mobarter/features/auth/wallet_service.txt';
import 'package:mobarter/features/onboarding/questionsList.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/auth.gql.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/graphql/schema/wallet.gql.dart';
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
  // void setState(void Function() fn)
  String questionSelected = "";
  @override
  Widget build(BuildContext context) {
    return SetupTxnPinHook(
      stateUpdater: (text) {
        setState(() {
          questionSelected = text;
        });
      },
      questionSelected: questionSelected,
    );
  }
}

class SetupTxnPinHook extends HookWidget {
  final void Function(String text) stateUpdater;
  final String questionSelected;
  SetupTxnPinHook({required this.stateUpdater, required this.questionSelected});

  TextEditingController answer = TextEditingController();
  TextEditingController txnPin = TextEditingController();
  TextEditingController txnPinConfirm = TextEditingController();
  // final setUpPin = PinSetupService();
  final authSvc = AuthService();
  // final cryptoSvc = CryptoWalletService();

  @override
  Widget build(BuildContext context) {
    final result = useMutation$WalletCrypto_mobileCreate();

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
      // ! Submit

      try {
        final response = await result
            .runMutation(
              Variables$Mutation$WalletCrypto_mobileCreate(
                input: Input$Wallet_CreateInput(
                  answer: answer.text,
                  pin: pin,
                  question: questionSelected,
                  user_uid: authSvc.user()!.uid,
                ),
              ),
            )
            .networkResult;

        final msg = response!.parsedData?.walletCrypto_mobileCreate.message;

        apptToast(context, "Your pin has been succcessfully setup");
        Navigator.of(context).pushNamed("/home");
      } catch (e) {
        apptToast(context, "$e");
        appLogger.e("Error in creating wallet:  $e");
        Navigator.of(context).pushNamed("/home");
      }
    }

    return appScaffold(context,
      title: "Password Setup",
      automaticallyImplyLeading: false,
      body: Column(
        spacing: 20,
        children: [
          listTile(context,
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
                    return listTile(context,
                      title: title,
                      onTap: () {
                        stateUpdater(title);
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

class SecretQuestion extends HookWidget {
  SecretQuestion({super.key});
  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_secretQuestions(
      Options$Query$static_secretQuestions(),
    );
    final list = result.result.parsedData?.static_secretQuestions;

    if (list == null || list.isEmpty) {
      return Text("No data yet");
    }

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return listTile( context,title: item.text);
      },
    );
  }
}
