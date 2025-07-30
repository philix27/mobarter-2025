import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/features/profile/profile_page.dart';
import 'package:mobarter/features/settings/kyc_page.dart';
import 'package:mobarter/features/settings/showLearn.dart';
import 'package:mobarter/features/settings/showDocsLinks.dart';
import 'package:mobarter/features/settings/showSocials.dart';
import 'package:mobarter/features/settings/showSupport.dart';
import 'package:mobarter/features/wallet/WalletQRCodePage.dart';
import 'package:mobarter/features/theme/themes_provider.dart';
import 'package:mobarter/utils/logger.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class SettingsPage extends HookConsumerWidget {
  SettingsPage({super.key});
  final authSvc = AuthService();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = themeWatch(ref);
    final user = authSvc.user();

    if (user == null) {
      appLogger.e("User is not logged in");
      return appScaffold(
        context,
        title: "Settings",
        body: Center(child: Text("You are not logged in.")),
      );
    }

    return appScaffold(
      context,
      title: "Settings",
      body: Column(
        // spacing: 4,
        children: [
          listTile(
            context,
            title: user.displayName!,
            subtitle: user.email,
            imgUrl: user.photoURL,
            onTap: () async {
              pushScreen(
                context,
                screen: ProfilePage(),
                withNavBar: false,
                pageTransitionAnimation: PageTransitionAnimation.slideUp,
              );
            },
          ),
          KYCTile(),
          listTile(
            context,
            title: "Wallet",
            subtitle: "Ethereum Wallet Address",
            icon: Icons.wallet,
            onTap: () {
              pushScreen(
                context,
                screen: WalletQrCodePage(),
                withNavBar: false,
                pageTransitionAnimation: PageTransitionAnimation.slideUp,
              );
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
            context,
            title: "Theme",
            subtitle: 'Toggle theme',
            icon: Icons.graphic_eq,
            trailing: Transform.scale(
              scale: 0.6,
              child: Switch(
                padding: EdgeInsets.all(0),
                value: themeState.isDarkModeEnabled,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (enabled) {
                  if (enabled) {
                    themeState.setDarkTheme();
                  } else {
                    themeState.setLightTheme();
                  }
                },
              ),
            ),
          ),
          listTile(
            context,
            title: "Support & Community",
            subtitle: 'Contact customer support',
            icon: Icons.support_agent_rounded,
            onTap: () {
              btmSheet(ctx: context, w: ShowSupports(), h: 0.35);
            },
          ),

          listTile(
            context,
            title: "Socials",
            subtitle: 'Social Media Pages',
            // todo: use proper icons
            icon: Icons.social_distance,
            onTap: () {
              btmSheet(ctx: context, w: ShowSocials(), h: 0.45);
            },
          ),
          listTile(
            context,
            title: "Docs",
            subtitle: 'Privacy and Legal Agreements',
            icon: Icons.link,
            onTap: () {
              btmSheet(ctx: context, w: DocsLinks(), h: 0.4);
            },
          ),
          listTile(
            context,
            title: "Learn",
            subtitle: 'Tutorials and Guide on Mobarter',
            icon: Icons.video_camera_front,
            onTap: () {
              btmSheet(ctx: context, w: ShowLearn(), h: 0.5);
            },
          ),
          listTile(
            context,
            title: "Logout",
            subtitle: "Signout your account",
            icon: Icons.logout,
            onTap: () async {
              await authSvc
                  .signOut()
                  .then((value) {
                    appLogger.i("User logged out successfully");
                    Navigator.of(context).pushNamed("/");
                    Phoenix.rebirth(context);
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
