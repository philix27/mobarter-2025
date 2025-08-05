import 'package:flutter/material.dart';
import 'package:mobarter/features/intro/auth/ResetPage.dart';
import 'package:mobarter/features/intro/auth/SigUpPage.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      context,
      title: "Login",
      automaticallyImplyLeading: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            textField(label: "Email", context),
            SizedBox(height: 20),
            textField(label: "Password", context),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    pushScreen(context, screen: ResetPasswordPage());
                  },
                  icon: Text(
                    "Forgot password",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            btn(title: "Login", onPressed: () {}),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                IconButton(
                  onPressed: () {
                    pushScreen(context, screen: SignUpPage());
                  },
                  icon: Text(
                    "Create Account",
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
