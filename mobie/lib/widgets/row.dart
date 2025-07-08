import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';

Widget row({
  required String title,
  String? subtitle,
  Widget? leading,
  IconData? icon,
  Widget? trailing,
  Color? tileColor,
  Function()? onTap,
}) {
  return ListTile(
    onTap: onTap,
    splashColor: colorPrimaryLight,
    tileColor: tileColor,
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
    leading: icon != null ? Icon(icon, size: 20, color: colorPrimary) : leading,
    trailing: trailing,
  );
}
