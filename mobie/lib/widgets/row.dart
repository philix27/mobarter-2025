import 'package:flutter/material.dart';

Widget row({
  required String title,
  String? subtitle,
  Widget? leading,
  Widget? trailing,
}) {
  return ListTile(
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
    leading: leading,
    trailing: trailing,
  );
}
