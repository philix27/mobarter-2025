import 'package:flutter/material.dart';
import 'package:mobarter/utils/size.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future btmSheet({required BuildContext ctx, required Widget w, double? h}) {
  return showMaterialModalBottomSheet(
    context: ctx,
    builder: (context) {
      return SizedBox(
        height: getH(context, h ?? 0.5),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: w,
        ),
      );
    },
  );
}
