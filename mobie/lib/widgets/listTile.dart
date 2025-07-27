import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';

Widget listTile({
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
    color: colorCard,
    child: ListTile(
      dense: true,
      onTap: onTap,
      splashColor: colorPrimaryLight,
      isThreeLine: false,
      // tileColor: colorCard,
      // tileColor: tileColor,
      // isThreeLine: subtitle != null,
      title: Text(
        title,
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
            )
          : null,
      leading: icon != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(
                16,
              ), // Change the radius as needed
              child: Container(
                color: colorCard,
                padding: EdgeInsets.all(7),
                // decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Icon(icon, size: 20, color: colorPrimary),
              ),
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
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
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
