import 'package:flutter/material.dart';
import 'package:mobarter/connect_demo/connect_logic.dart';
import 'package:mobarter/features/bankAccount/showBankAccounts.dart';
import 'package:mobarter/features/profile/showAccountInfo.dart';
import 'package:mobarter/features/profile/showLearn.dart';
import 'package:mobarter/features/profile/showLinks.dart';
import 'package:mobarter/features/profile/showSocials.dart';
import 'package:mobarter/features/profile/showSupport.dart';
import 'package:mobarter/features/profile/showTheme.dart';
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
        // spacing: 4,
        children: [
          row(
            title: "Profile",
            subtitle: "Account informations",
            icon: Icons.person,
            onTap: () {
              btmSheet(ctx: context, w: ShowAccountInfo(), h: 0.5);
            },
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
            onTap: () {
              btmSheet(ctx: context, w: ShowBankAccounts(), h: 0.4);
            },
          ),
          row(
            title: "Theme",
            subtitle: 'Manage appearance',
            icon: Icons.graphic_eq,
            onTap: () {
              btmSheet(ctx: context, w: ShowTheme(), h: 0.2);
            },
          ),
          row(
            title: "Support & Community",
            subtitle: 'Contact customer support',
            icon: Icons.support_agent_rounded,
            onTap: () {
              btmSheet(ctx: context, w: ShowSupports(), h: 0.35);
            },
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
