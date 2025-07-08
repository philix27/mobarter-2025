import 'package:flutter/material.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowSocials extends StatelessWidget {
  const ShowSocials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 0,
      children: [
        listTile(title: "Youtube"),
        listTile(title: "Twitter"),
        listTile(title: "Farcaster"),
        listTile(title: "LinkedIn"),
      ],
    );
  }
}
