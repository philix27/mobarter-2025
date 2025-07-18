import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/listTile.dart';

class DataPlanWidget extends StatelessWidget {
  const DataPlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return listTile(
      title: "Select a data plan",
      subtitle: "",
      tileColor: colorCard,
      onTap: () {
        btmSheet(ctx: context, w: _SelectDataPlan(), h: 0.5);
      },
    );
  }
}

class _SelectDataPlan extends StatelessWidget {
  const _SelectDataPlan();

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
