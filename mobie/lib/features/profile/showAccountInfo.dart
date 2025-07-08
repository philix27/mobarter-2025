import 'package:flutter/material.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/row.dart';

class ShowAccountInfo extends StatelessWidget {
  const ShowAccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.3),
      child: Column(
        spacing: 0,
        children: [
          row(title: "Names"),
          row(title: "Gender"),
          row(title: "Date Of Birth"),
          row(title: "BVN"),
          row(title: "NIN"),
        ],
      ),
    );
  }
}
