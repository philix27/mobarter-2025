import 'package:flutter/material.dart';
import 'package:mobarter/utils/size.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future btmSheet({required BuildContext ctx, required Widget w, double? h}) {
  return showMaterialModalBottomSheet(
    context: ctx,
    bounce: true,
    // elevation: 2,
    // expand: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          h == null
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: w,
                  ),
                )
              : SizedBox(
                  height: getH(ctx, h),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: w,
                    ),
                  ),
                ),
          SizedBox(height: 30),
        ],
      );
    },
  );
}
