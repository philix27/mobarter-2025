import 'package:flutter/material.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowCurrency extends StatelessWidget {
  const ShowCurrency({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.5),
      child: Column(
        spacing: 0,
        children: [
          listTile(title: "USDT"),
          listTile(title: "CUSD"),
          listTile(title: "USDC"),
        ],
      ),
    );
  }
}
