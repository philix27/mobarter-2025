import 'package:flutter/material.dart';

final bodyPadding = EdgeInsets.symmetric(horizontal: 16);
Widget appScaffold({
  required String title,
  bool? noneScrollable,
  required Widget body,
  bool automaticallyImplyLeading = true,
}) {
  return Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    ),
    body: noneScrollable != null
        ? Padding(padding: bodyPadding, child: body)
        : SingleChildScrollView(
            padding: bodyPadding, // optional
            child: body,
          ),
  );
}
