import 'package:flutter/material.dart';
import 'package:mobarter/connect_demo/connect_logic.dart';
import 'package:mobarter/widgets/btn.dart';

class ConnectionButton extends StatelessWidget {
  const ConnectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ConnectLogic.isConnected(),
      builder: (BuildContext con, AsyncSnapshot<bool> snapshot) {
        if (snapshot.data == null || snapshot.data == false) {
          return btn(
            title: "Sign In WIth Google",
            onPressed: () {
              // ConnectLogic.connect();
              Navigator.of(context).pushNamed("/home");
            },
          );
        }
        return btn(
          title: "Welcome",
          onPressed: () {
            Navigator.of(context).pushNamed("/minimal");
          },
        );
      },
    );
  }
}
