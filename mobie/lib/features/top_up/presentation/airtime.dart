import 'package:flutter/material.dart';

import 'package:mobarter/widgets/inputText.dart';

class AirtimeWidget extends StatelessWidget {
  const AirtimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return textField(label: 'Amount');
  }
}
