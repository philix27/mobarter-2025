import 'package:flutter/material.dart';
import 'package:mobarter/widgets/row.dart';

class ShowSocials extends StatelessWidget {
  const ShowSocials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 0,
      children: [
        row(title: "Youtube"),
        row(title: "Twitter"),
        row(title: "Farcaster"),
        row(title: "LinkedIn"),
      ],
    );
  }
}
