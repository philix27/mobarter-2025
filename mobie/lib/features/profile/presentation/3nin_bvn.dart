import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/widgets.dart';

class EnterBvnNin3 extends HookConsumerWidget {
  EnterBvnNin3({super.key});
  TextEditingController nin = TextEditingController();
  TextEditingController bvn = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final mutation = useMutation$kyc_addBvnNin();

    submit() async {
      try {
        require(bvn.text, "BVN needed");
        require(bvn.text.length == 11, "Enter a valid BVN");
        require(nin.text, "NIN needed");
        require(nin.text.length == 11, "Enter a valid NIN");

        final response = await mutation
            .runMutation(
              Variables$Mutation$kyc_addBvnNin(
                input: Input$Kyc_AddBvnNinInput(bvn: bvn.text, nin: nin.text),
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
      children: [
        textField(
          context,
          label: 'National Identity Number (NIN)',
          maxLength: 11,
          controller: nin,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow digits only
            LengthLimitingTextInputFormatter(11), // Enforces the limit
          ],
        ),
        textField(
          context,
          label: 'Bank Verification No (BVN)',
          maxLength: 11,
          controller: bvn,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow digits only
            LengthLimitingTextInputFormatter(11), // Enforces the limit
          ],
        ),
        Btn(title: "Submit", onPressed: () => submit()),
      ],
    );
  }
}
