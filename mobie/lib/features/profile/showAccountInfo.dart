import 'package:flutter/material.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowAccountInfo extends StatelessWidget {
  const ShowAccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.3),
      child: Column(
        spacing: 0,
        children: [
          listTile(title: "Names"),
          listTile(title: "Gender"),
          listTile(title: "Date Of Birth"),
          listTile(title: "BVN"),
          listTile(title: "NIN"),
        ],
      ),
    );
  }
}
