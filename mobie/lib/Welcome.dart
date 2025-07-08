import 'package:flutter/material.dart';
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
          return ElevatedButton(
            onPressed: () {
              ConnectLogic.connect();
              // Navigator.of(context).pushNamed("/minimal");
            },
            child: const Text("Sign In WIth Google"),
          );
        }
        return ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/minimal");
          },
          child: const Text("Welcome"),
        );
      },
    );
  }
}
