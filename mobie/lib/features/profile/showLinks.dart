import 'package:flutter/material.dart';
import 'package:mobarter/connect_demo/connect_logic.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/row.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ShowLinks extends StatelessWidget {
  const ShowLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.5),
      child: Column(
        spacing: 0,
        children: [
          row(title: "Youtube"),
          row(title: "Twitter"),
          row(title: "Farcaster"),
          row(title: "LinkedIn"),
        ],
      ),
    );
  }
}
