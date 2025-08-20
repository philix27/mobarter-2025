import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/utils/size.dart';
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
    final r = kycFormRead(ref);
    final w = kycFormWatch(ref);

    submit() async {
      try {
        require(firstName.text, "First name needed");
        require(lastName.text, "Last name needed");
        require(dob.text, "Date of Birth name needed");
        require(w.gender != null, "Select gender");

        await mutation
            .runMutation(
              Variables$Mutation$kyc_addNames(
                input: Input$Kyc_AddNamesInput(
                  firstName: firstName.text,
                  lastName: lastName.text,
                  middleName: middleName.text,
                  dob: dob.text,
                  isMale: w.gender == Gender.Male,
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
          controller: firstName,
          keyboardType: TextInputType.name,
          inputFormatters: [
            LengthLimitingTextInputFormatter(35), // Enforces the limit
          ],
        ),
        textField(
          context,
          label: 'Last name',
          controller: lastName,
          keyboardType: TextInputType.name,
          inputFormatters: [
            LengthLimitingTextInputFormatter(35), // Enforces the limit
          ],
        ),
        textField(
          context,
          label: 'Middle name',
          controller: middleName,
          keyboardType: TextInputType.name,
          inputFormatters: [
            LengthLimitingTextInputFormatter(35), // Enforces the limit
          ],
        ),
        textField(
          context,
          label: 'Date of Birth',
          hintText: "DY/MO/YR",
          maxLength: 6,
          controller: dob,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow digits only
            LengthLimitingTextInputFormatter(6), // Enforces the limit
          ],
        ),
        listTile(
          context,
          title: w.gender == null
              ? "Select Gender"
              : w.gender!.name.toUpperCase(),
          onTap: () {
            btmSheet(
              ctx: context,
              // h: getH(context, 0.3),
              w: Column(
                children: [
                  listTile(
                    context,
                    title: "MALE",
                    onTap: () {
                      r.updateGender(Gender.Male);
                    },
                  ),
                  listTile(
                    context,
                    title: "FEMALE",
                    onTap: () {
                      r.updateGender(Gender.Female);
                    },
                  ),
                  SizedBox(height: 40),
                ],
              ),
            );
          },
        ),
        SizedBox(height: 20),
        Btn(title: "Submit", onPressed: () => submit()),
      ],
    );
  }
}
