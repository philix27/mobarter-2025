import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/widgets/shimmer.dart';
// import 'package:mobarter/constants/theme.dart';

Widget listTile(
  BuildContext context, {
  required String title,
  String? subtitle,
  Widget? leading,
  String? imgUrl,
  IconData? icon,
  Widget? trailing,
  Color? tileColor,
  Function()? onTap,
}) {
  return Card( 
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 0.1,
    color: tileColor,
    child: ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      dense: true,
      onTap: onTap,
      // splashColor: colorPrimaryLight,
      isThreeLine: false,
      // tileColor: colorCard,
      // tileColor: tileColor,
      // isThreeLine: subtitle != null,
      title: Text(title, style: textTheme(context).bodyMedium),
      subtitle: subtitle != null
          ? Text(subtitle, style: textTheme(context).bodySmall)
          : null,
      leading: icon != null
          ? Container(
              // color: Colors.white,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(7),
              child: Icon(icon, size: 20),
            )
          : imgUrl != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(
                16,
              ), // Change the radius as needed
              child: imgUrl == null
                  ? SizedBox.shrink()
                  : CachedNetworkImage(
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
