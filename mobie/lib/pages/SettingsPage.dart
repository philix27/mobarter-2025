import 'package:flutter/material.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/features/bankAccount/showBankAccounts.dart';
import 'package:mobarter/features/profile/showAccountInfo.dart';
import 'package:mobarter/features/profile/showLearn.dart';
import 'package:mobarter/features/profile/showDocsLinks.dart';
import 'package:mobarter/features/profile/showSocials.dart';
import 'package:mobarter/features/profile/showSupport.dart';
import 'package:mobarter/features/profile/showTheme.dart';
import 'package:mobarter/features/profile/showWallet.dart';
import 'package:mobarter/utils/logger.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});
  final authSvc = AuthService();
  @override
  Widget build(BuildContext context) {
    final user = authSvc.user();

    if (user == null) {
      appLogger.e("User is not logged in");
      return appScaffold(
        title: "Settings",
        body: Center(child: Text("You are not logged in.")),
      );
    }

    return appScaffold(
      title: "Settings",
      body: Column(
        // spacing: 4,
        children: [
          listTile(
            title: user.displayName!,
            subtitle: user.email,
            imgUrl: user.photoURL,
            onTap: () async {
              btmSheet(ctx: context, w: ShowAccountInfo(), h: 0.5);
            },
          ),

          listTile(
            title: "Wallet",
            subtitle: "Ethereum Wallet Address",
            icon: Icons.wallet,
            onTap: () {
              btmSheet(ctx: context, w: ShowWallet(), h: 0.5);
            },
          ),
          // listTile(
          //   title: "Bank Accounts",
          //   subtitle: "Manage bank account details",
          //   icon: Icons.money,
          //   onTap: () {
          //     btmSheet(ctx: context, w: ShowBankAccounts(), h: 0.4);
          //   },
          // ),
          listTile(
            title: "Theme",
            subtitle: 'Manage appearance',
            icon: Icons.graphic_eq,
            onTap: () {
              btmSheet(ctx: context, w: ShowTheme(), h: 0.2);
            },
          ),
          listTile(
            title: "Support & Community",
            subtitle: 'Contact customer support',
            icon: Icons.support_agent_rounded,
            onTap: () {
              btmSheet(ctx: context, w: ShowSupports(), h: 0.35);
            },
          ),

          listTile(
            title: "Socials",
            subtitle: 'Social Media Pages',
            // todo: use proper icons
            icon: Icons.social_distance,
            onTap: () {
              btmSheet(ctx: context, w: ShowSocials(), h: 0.45);
            },
          ),
          listTile(
            title: "Docs",
            subtitle: 'Privacy and Legal Agreements',
            icon: Icons.link,
            onTap: () {
              btmSheet(ctx: context, w: DocsLinks(), h: 0.4);
            },
          ),
          listTile(
            title: "Learn",
            subtitle: 'Tutorials and Guide on Mobarter',
            icon: Icons.video_camera_front,
            onTap: () {
              btmSheet(ctx: context, w: ShowLearn(), h: 0.5);
            },
          ),
          listTile(
            title: "Logout",
            subtitle: "Signout your account",
            icon: Icons.logout,
            onTap: () async {
              await authSvc
                  .signOut()
                  .then((value) {
                    appLogger.i("User logged out successfully");
                    Navigator.of(context).pushNamed("/");
                    // Navigator.of(context).pushNamed("/welcome");
                  })
                  .catchError((error) {
                    appLogger.e("Error logging out: $error");
                  });
            },
          ),
        ],
      ),
    );
  }
}
