import 'package:flutter/material.dart';
import 'package:mobarter/connect_demo/connect_logic.dart';
import 'package:mobarter/features/profile/showLearn.dart';
import 'package:mobarter/features/profile/showLinks.dart';
import 'package:mobarter/features/profile/showSocials.dart';
import 'package:mobarter/features/profile/showWallet.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
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
          row(
            title: "Profile",
            subtitle: "Account informations",
            icon: Icons.person,
          ),
          row(
            title: "Wallet",
            subtitle: ConnectLogic.getPublicAddress(),
            icon: Icons.wallet,
            onTap: () {
              btmSheet(ctx: context, w: ShowWallet(), h: 0.5);
            },
          ),
          row(
            title: "Bank Accounts",
            subtitle: "Manage bank account details",
            icon: Icons.money,
          ),
          row(
            title: "Support",
            subtitle: 'Contact customer support',
            icon: Icons.support,
          ),
          row(title: "Theme", subtitle: 'Manage appearance', icon: Icons.light),
          row(
            title: "Community",
            subtitle: 'Groups and forums',
            icon: Icons.group,
          ),
          row(
            title: "Socials",
            subtitle: 'Social Media Pages',
            // todo: use proper icons
            icon: Icons.social_distance,
            onTap: () {
              btmSheet(ctx: context, w: ShowSocials(), h: 0.5);
            },
          ),
          row(
            title: "Links",
            subtitle: 'Privacy and Legal Agreements',
            icon: Icons.link,
            onTap: () {
              btmSheet(ctx: context, w: ShowLinks(), h: 0.4);
            },
          ),
          row(
            title: "Learn",
            subtitle: 'Tutorials and Guide on Mobarter',
            icon: Icons.video_camera_front,
            onTap: () {
              btmSheet(ctx: context, w: ShowLearn(), h: 0.5);
            },
          ),
          row(
            title: "Logout",
            subtitle: "Signout your account",
            icon: Icons.logout,
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
