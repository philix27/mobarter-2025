import 'package:flutter/material.dart';
import 'package:mobarter/connect_demo/connect_logic.dart';
import 'package:mobarter/widgets/row.dart';
import 'package:mobarter/widgets/scaffold.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      title: "Settings",
      body: Column(
        children: [
          row(title: "Profile", subtitle: "Account informations"),
          row(title: "Bank Accounts", subtitle: "Manage bank account details"),
          row(title: "Support", subtitle: 'Contact customer support'),
          row(title: "Theme", subtitle: 'Manage appearance'),
          row(title: "Community", subtitle: 'Groups and forums'),
          row(title: "Socials", subtitle: 'Social Media Pages'),
          row(title: "Links", subtitle: 'Privacy and Legal Agreements'),
          row(title: "Learn", subtitle: 'Tutorials and Guide on Mobarter'),
          row(
            title: "Logout",
            subtitle: "Signout your account",
            onTap: () {
              ConnectLogic.disconnect();
              Navigator.of(context).pushNamed("/");
            },
          ),
        ],
      ),
    );
  }
}
