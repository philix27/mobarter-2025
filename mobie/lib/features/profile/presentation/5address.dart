import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/widgets.dart';

class HomeAddress5 extends HookConsumerWidget {
  HomeAddress5({super.key});
  TextEditingController homeAddress = TextEditingController();
  TextEditingController stateAddress = TextEditingController();
  TextEditingController street = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final mutation = useMutation$Kyc_addAddressInfo();

    submit() async {
      try {
        require(homeAddress.text, "Home Address needed");
        require(stateAddress.text, "State Address needed");
        require(street.text, "Street needed");

        final response = await mutation
            .runMutation(
              Variables$Mutation$Kyc_addAddressInfo(
                input: Input$Kyc_AddAddressInfoInput(
                  country: Enum$Country.NG,
                  houseAddress: homeAddress.text,
                  state: stateAddress.text,
                  street: street.text,
                ),
              ),
            )
            .networkResult;
        validateGqlQuery(response);
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
          label: 'State',
          controller: stateAddress,
          keyboardType: TextInputType.streetAddress,
          inputFormatters: [
            LengthLimitingTextInputFormatter(35), // Enforces the limit
          ],
        ),
        textField(
          context,
          label: 'Street',
          controller: street,
          keyboardType: TextInputType.streetAddress,
          inputFormatters: [
            LengthLimitingTextInputFormatter(35), // Enforces the limit
          ],
        ),
        textField(
          context,
          label: 'Home Address',
          controller: homeAddress,
          keyboardType: TextInputType.streetAddress,
          inputFormatters: [
            LengthLimitingTextInputFormatter(35), // Enforces the limit
          ],
        ),
        Btn(title: "Submit", onPressed: () => submit()),
      ],
    );
  }
}
