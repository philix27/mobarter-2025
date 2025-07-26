import 'package:flutter/material.dart';

final bodyPadding = EdgeInsets.symmetric(horizontal: 16);
Widget appScaffold({
  required String title,
  bool? noneScrollable,
  required Widget body,
  bool automaticallyImplyLeading = true,
  List<Widget>? actions,
}) {
  return Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: appText(title),
      actions: actions,
    ),
    body: noneScrollable != null
        ? Padding(padding: bodyPadding, child: body)
        : SingleChildScrollView(
            padding: bodyPadding, // optional
            child: body,
          ),
  );
}

Widget appText(String title) {
  return Text(
    title,
    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
  );
}
