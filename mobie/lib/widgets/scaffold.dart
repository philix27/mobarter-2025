import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';

final bodyPadding = EdgeInsets.symmetric(horizontal: 16);
Widget appScaffold(
  BuildContext context, {
  required String title,
  bool? noneScrollable,
  required Widget body,
  bool automaticallyImplyLeading = true,
  List<Widget>? actions,
  Widget? leading,
}) {
  return Scaffold(
    resizeToAvoidBottomInset: true,
    appBar: AppBar(
      centerTitle: true,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: Text(title, style: textTheme(context).headlineMedium),
      actions: actions,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leading: leading,
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: Theme.of(
          context,
        ).scaffoldBackgroundColor, // Navigation bar
        statusBarColor: Theme.of(context).scaffoldBackgroundColor, // Status bar
        systemNavigationBarDividerColor: Theme.of(
          context,
        ).scaffoldBackgroundColor,
        systemNavigationBarContrastEnforced: true,
        systemStatusBarContrastEnforced: true,
      ),
    ),
    body: noneScrollable == null
        ? SafeArea(
            child: SingleChildScrollView(
              padding: bodyPadding, // optional
              child: body,
            ),
          )
        : SafeArea(minimum: bodyPadding, child: body),
  );
}

Widget appText(String title) {
  return Text(
    title,
    // style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
  );
}
