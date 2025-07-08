import 'package:flutter/material.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowLearn extends StatelessWidget {
  const ShowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.5),
      child: Column(
        spacing: 0,
        children: [
          listTile(title: "How to purchase airtime"),
          listTile(title: "How to purchase data"),
        ],
      ),
    );
  }
}
