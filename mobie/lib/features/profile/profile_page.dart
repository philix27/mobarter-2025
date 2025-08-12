import 'package:flutter/material.dart';
import 'package:mobarter/config/env.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      context,
      title: "Profile",
      body: Column(
        spacing: 0,
        children: [
          // listTile(title: "Email", subtitle: user.email),
          listTile(context, title: "Phone"),
          listTile(context, title: "Gender"),
          listTile(context, title: "Date Of Birth"),
          listTile(context, title: "BVN"),
          listTile(context, title: "NIN"),
          isDevEnv ? btn(title: "KYC") : SizedBox.shrink(),
        ],
      ),
    );
  }
}
