import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future btmSheet({required BuildContext ctx, required Widget w, double? h}) {
  return showMaterialModalBottomSheet(
    context: ctx,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: w,
            ),
          ),
          SizedBox(height: 30),
        ],
      );
    },
  );
}
