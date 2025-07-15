import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/firestore/secret_questions.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/btn.dart';

import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';

class SetupTxnPinPage extends ConsumerWidget {
  const SetupTxnPinPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return appScaffold(
      title: "Password Setup",
      automaticallyImplyLeading: false,
      body: Column(
        spacing: 20,
        children: [
          listTile(
            title: "Pick a secret question",
            onTap: () {
              btmSheet(ctx: context, w: SecretQuestion(), h: 0.65);
            },
          ),
          textField(
            label: 'Secret answer',
            maxLength: 25,
            helperText: "An answer only you will know",
          ),
          SizedBox(height: 25),
          Text(
            "Pin Set up",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          ),
          textField(
            label: 'Enter Transaction Pin',
            helperText: "Will be used for every transaction",
            maxLength: 6,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow digits only
              LengthLimitingTextInputFormatter(6), // Enforces the limit
            ],
          ),
          textField(
            label: 'Confirm Transaction Pin',
            helperText: "Will be used for every transaction",
            maxLength: 6,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow digits only
              LengthLimitingTextInputFormatter(6), // Enforces the limit
            ],
          ),
          btn(title: "Submit", onPressed: () {}),
        ],
      ),
    );
  }
}

class SecretQuestion extends StatelessWidget {
  SecretQuestion({super.key});
  final questionsSvc = SecretQuestionsService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: questionsSvc.getQuestions(),
      builder: (BuildContext context, AsyncSnapshot<List<String>?> snapshot) {
        if (!snapshot.hasData) return SizedBox.shrink();
        final data = snapshot.data!;
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final title = data[index];
            return listTile(title: title);
          },
        );
      },
    );
  }
}
