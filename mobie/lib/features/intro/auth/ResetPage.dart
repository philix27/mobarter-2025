import 'package:flutter/material.dart';
import 'package:mobarter/features/intro/auth/SigUpPage.dart';
import 'package:mobarter/features/intro/auth/SiginPage.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      context,
      title: "Reset Password",
      body: Padding(
        padding: const EdgeInsets.all(.0),
        child: Column(
          children: [
            textField(context, label: "Email"),
            SizedBox(height: 20),
            textField(context, label: "Password"),
            SizedBox(height: 20),
            textField(context, label: "Confirm Password"),
            SizedBox(height: 20),
            Btn(title: "Reset", onPressed: () {}),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Remember Password?"),
                IconButton(
                  onPressed: () {
                    pushScreen(context, screen: SignInPage());
                  },
                  icon: Text(
                    "Login",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
