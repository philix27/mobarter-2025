import 'package:flutter/material.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/widgets/toast.dart';

class ConnectionButton extends StatelessWidget {
  ConnectionButton({super.key});

  final svc = AuthService();

  @override
  Widget build(BuildContext context) {
    if (svc.isLoggedIn()) {
      return btn(
        title: "Welcome",
        onPressed: () {
          Navigator.of(context).pushNamed("/home");
        },
      );
    } else {
      return btn(
        title: "Sign In WIth Google",
        onPressed: () async {
          final loggedIn = await svc.loginWithGoogle();
          if (loggedIn) {
            Navigator.of(context).pushNamed("/home");
          } else {
            apptToast(context, "Login Failed");
          }
        },
      );
    }
  }
}
