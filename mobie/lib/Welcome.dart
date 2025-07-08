import 'package:flutter/material.dart';
import 'package:mobarter/widgets/btn.dart';
import 'connect_demo/connect_logic.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome")),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Welcome to your one stop "),
          ConnectionButton(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

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
              Navigator.of(context).pushNamed("/minimal");
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
