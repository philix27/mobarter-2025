import 'package:flutter/material.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowAccountInfo extends StatelessWidget {
  ShowAccountInfo({super.key});
  final authSvc = AuthService();

  @override
  Widget build(BuildContext context) {
    final user = authSvc.user()!;

    return SizedBox(
      height: getH(context, 0.3),
      child: SingleChildScrollView(
        child: Column(
          spacing: 0,
          children: [
            // listTile(title: "Email", subtitle: user.email),
            listTile(context, title: "Phone", subtitle: user.phoneNumber),
            listTile(context, title: "Gender"),
            listTile(context, title: "Date Of Birth"),
            listTile(context, title: "BVN"),
            listTile(context, title: "NIN"),
          ],
        ),
      ),
    );
  }
}
