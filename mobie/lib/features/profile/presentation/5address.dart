import 'package:flutter/material.dart';
import 'package:mobarter/widgets/inputText.dart';

class HomeAddress5 extends StatelessWidget {
  HomeAddress5({super.key});
  TextEditingController homeAddress = TextEditingController();
  TextEditingController stateAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textField(
          context,
          label: 'State',
          maxLength: 100,
          controller: stateAddress,
          keyboardType: TextInputType.streetAddress,
        ),
        textField(
          context,
          label: 'Home Address',
          maxLength: 100,
          controller: homeAddress,
          keyboardType: TextInputType.streetAddress,
        ),
      ],
    );
  }
}
