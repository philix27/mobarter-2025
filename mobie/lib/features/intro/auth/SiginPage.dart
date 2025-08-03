import 'package:flutter/material.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/scaffold.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      context,
      title: "Login",
      body: Column(
        children: [
          textField(label: "Email"),
          textField(label: "Password"),
          IconButton(onPressed: () {}, icon: Text("Forgot password")),
          SizedBox(height: 20),
          Text("Don't have an account?"),
          IconButton(onPressed: () {}, icon: Text("Sign In")),
        ],
      ),
    );
  }
}
