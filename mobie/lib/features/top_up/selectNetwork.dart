import 'package:flutter/material.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowTopUpProviders extends StatelessWidget {
  const ShowTopUpProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.5),
      child: Column(
        spacing: 0,
        children: [
          listTile(title: "MTN"),
          listTile(title: "Airtel"),
          listTile(title: "Glo"),
        ],
      ),
    );
  }
}
