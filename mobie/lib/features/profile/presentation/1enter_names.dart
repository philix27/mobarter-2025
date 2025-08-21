import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';
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

  @override
  Widget build(BuildContext context, ref) {
    final mutation = useMutation$kyc_addNames();
    final r = kycFormRead(ref);
    final w = kycFormWatch(ref);

    submit() async {
      try {
        require(firstName.text, "First name needed");
        require(lastName.text, "Last name needed");
        require(w.dob, "Date of Birth needed");
        require(w.gender, "Select gender");

        final response = await mutation
            .runMutation(
              Variables$Mutation$kyc_addNames(
                input: Input$Kyc_AddNamesInput(
                  firstName: firstName.text,
                  lastName: lastName.text,
                  middleName: middleName.text,
                  dob: w.dob,
                  isMale: w.gender == Gender.Male,
                ),
              ),
            )
            .networkResult;
        validateGqlQuery(response);
        appToast(context, "Record submitted");
        Navigator.of(context).pushNamed("/home");
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
        DatePicker(),

        listTile(
          context,
          label: "Gender",
          title: w.gender == null
              ? "Select Gender"
              : w.gender!.name.toUpperCase(),
          onTap: () {
            btmSheet(ctx: context, w: PickGender());
          },
        ),
        SizedBox(height: 20),
        Btn(title: "Submit", onPressed: () => submit()),
      ],
    );
  }
}

class PickGender extends ConsumerWidget {
  const PickGender({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final r = kycFormRead(ref);
    return Column(
      children: [
        listTile(
          context,
          title: "MALE",
          onTap: () {
            r.updateGender(Gender.Male);
            Navigator.of(context).pop();
          },
        ),
        listTile(
          context,
          title: "FEMALE",
          onTap: () {
            r.updateGender(Gender.Female);
            Navigator.of(context).pop();
          },
        ),
        SizedBox(height: 40),
      ],
    );
  }
}

class DatePicker extends ConsumerWidget {
  DateTime? picked;
  @override
  Widget build(BuildContext context, ref) {
    final r = kycFormRead(ref);
    final w = kycFormWatch(ref);

    // Function to show date picker
    Future<void> pickDate(BuildContext context) async {
      picked = await showDatePicker(
        context: context,
        initialDate: picked ?? DateTime(1998, 07, 27), // default date
        firstDate: DateTime(1950), // earliest allowed date
        lastDate: DateTime(2010), // latest allowed date
      );

      if (picked != null) {
        r.updateDob("${picked?.toLocal()}".split(' ').first);
      }
    }

    return listTile(
      context,
      label: "Date of Birth",
      onTap: () => pickDate(context),
      title: w.dob ?? "No date selected",
    );
  }
}
