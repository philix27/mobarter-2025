import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/scaffold.dart';

class KycPage extends StatelessWidget {
  KycPage({super.key});
  TextEditingController phone = TextEditingController();
  TextEditingController nin = TextEditingController();
  TextEditingController bvn = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController middleName = TextEditingController();
  TextEditingController dob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      context,
      title: "KYC Verification",
      body: Column(
        spacing: 20,
        children: [
          textField(
            context,
            label: 'Phone number',
            helperText: "Will be verified in the next step",
            maxLength: 11,
            controller: phone,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow digits only
              LengthLimitingTextInputFormatter(11), // Enforces the limit
            ],
          ),
          textField(
            context,
            label: 'National Identity Number (NIN)',
            maxLength: 12,
            controller: nin,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow digits only
              LengthLimitingTextInputFormatter(6), // Enforces the limit
            ],
          ),
          textField(
            context,
            label: 'Bank Verification No (BVN)',
            maxLength: 12,
            controller: phone,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow digits only
              LengthLimitingTextInputFormatter(12), // Enforces the limit
            ],
          ),
          textField(
            context,
            label: 'Home Address',
            maxLength: 100,
            controller: address,
            keyboardType: TextInputType.streetAddress,
          ),
          textField(
            context,
            label: 'First name',
            helperText: "Must match your NIN & BVN",
            maxLength: 50,
            controller: firstName,
            keyboardType: TextInputType.name,
          ),
          textField(
            context,
            label: 'Last name',
            helperText: "Must match your NIN & BVN",
            maxLength: 50,
            controller: lastName,
            keyboardType: TextInputType.name,
          ),
          textField(
            context,
            label: 'Middle name',
            helperText: "Must match your NIN & BVN",
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
          btn(
            title: "Submit",
            onPressed: () {
              // todo
              // validate form and display error where necessary
              // todo
              // display bottom sheet with OTP input
              // todo
              // display bottom sheet with OTP input
            },
          ),
        ],
      ),
    );
  }
}
