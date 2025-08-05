import 'package:flutter/material.dart';
import 'package:mobarter/features/intro/auth/SiginPage.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      context,
      title: "Create Account",
      automaticallyImplyLeading: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            textField(context, label: "Email"),
            SizedBox(height: 20),
            textField(context, label: "Password"),
            SizedBox(height: 20),
            textField(context, label: "Confirm Password"),
            SizedBox(height: 50),
            btn(title: "Login", onPressed: () {}),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have an account?"),
                IconButton(
                  onPressed: () {
                    pushScreen(context, screen: SignInPage());
                  },
                  icon: Text(
                    "Sign in",
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
