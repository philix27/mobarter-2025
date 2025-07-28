import 'package:flutter/material.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';

final bodyPadding = EdgeInsets.symmetric(horizontal: 16);
Widget appScaffold(
  BuildContext context, {
  required String title,
  bool? noneScrollable,
  required Widget body,
  bool automaticallyImplyLeading = true,
  List<Widget>? actions,
}) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: Text(title, style: textTheme(context).headlineMedium),
      actions: actions,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
    // style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
  );
}
