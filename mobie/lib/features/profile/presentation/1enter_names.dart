import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/widgets.dart';

class EnterNames1 extends HookConsumerWidget {
  EnterNames1({super.key});
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController middleName = TextEditingController();
  TextEditingController dob = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final mutation = useMutation$kyc_addNames();

    submit() async {
      try {
        require(firstName.text, "First name needed");
        require(lastName.text, "Last name needed");
        require(dob.text, "Date of Birth name needed");
        // require(firstName.text, "Gender name needed");

        await mutation
            .runMutation(
              Variables$Mutation$kyc_addNames(
                input: Input$Kyc_AddNamesInput(
                  firstName: firstName.text,
                  lastName: lastName.text,
                  middleName: middleName.text,
                  dob: dob.text,
                  isMale: true,
                ),
              ),
            )
            .networkResult;

        appToast(context, "Record submitted");
        Navigator.of(context).pop();
      } catch (e) {
        appToastErr(context, e.toString());
      }
    }

    return Column(
      spacing: 20,
      children: [
        textField(
          context,
          label: 'First name',
          maxLength: 50,
          controller: firstName,
          keyboardType: TextInputType.name,
        ),
        textField(
          context,
          label: 'Last name',
          maxLength: 50,
          controller: lastName,
          keyboardType: TextInputType.name,
        ),
        textField(
          context,
          label: 'Middle name',
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
        Btn(title: "Submit", onPressed: () => submit()),
      ],
    );
  }
}
