import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/widgets/shimmer.dart';

Widget listTile(
  BuildContext context, {
  required String title,
  String? subtitle,
  Widget? leading,
  String? imgUrl,
  String? label,
  IconData? icon,
  Widget? trailing,
  Color? tileColor,
  Function()? onTap,
}) {
  return Column(
    children: [
      label != null
          ? Row(children: [Text(label, style: textTheme(context).bodyMedium)])
          : SizedBox.shrink(),
      SizedBox(height: 5),
      ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        dense: true,
        onTap: onTap,
        isThreeLine: false,
        // splashColor: colorPrimaryLight,
        // tileColor: colorCard,
        // tileColor: tileColor,
        // isThreeLine: subtitle != null,
        title: Text(title, style: textTheme(context).bodyMedium),
        subtitle: subtitle != null
            ? Text(subtitle, style: textTheme(context).bodySmall)
            : null,
        leading: icon != null
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                padding: EdgeInsets.all(5),
                child: Icon(
                  icon,
                  size: 17,
                  color: Theme.of(context).disabledColor,
                ),
              )
            : imgUrl != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(
                  16,
                ), // Change the radius as needed
                child: CachedNetworkImage(
                  imageUrl: imgUrl,
                  placeholder: (context, url) => roundShimmerImg(context),
                  errorWidget: (context, url, error) => SizedBox.shrink(),
                  width: 25,
                  height: 25,
                  fit: BoxFit.cover,
                ),
              )
            : leading,
        trailing: trailing,
      ),
    ],
  );
}

Widget simpleRow({required String title, String? subtitle}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),

      Text(
        subtitle ?? "",
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
