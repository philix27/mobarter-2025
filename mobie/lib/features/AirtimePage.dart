import 'package:flutter/material.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/row.dart';
import 'package:mobarter/widgets/scaffold.dart';

class AirtimePage extends StatelessWidget {
  const AirtimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      title: "Airtime",
      body: Column(
        spacing: 10,
        children: [
          row(title: "Currency", subtitle: "Currency for payment"),
          textField(label: 'Phone No.'),
        ],
      ),
    );
  }
}
