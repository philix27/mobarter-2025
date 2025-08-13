import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/features/bank_account/BankAccountPage.dart';
import 'package:mobarter/features/profile/profile_page.dart';
import 'package:mobarter/features/settings/showLearn.dart';
import 'package:mobarter/features/settings/showDocsLinks.dart';
import 'package:mobarter/features/settings/showSocials.dart';
import 'package:mobarter/features/settings/showSupport.dart';
import 'package:mobarter/features/theme/themes_provider.dart';
import 'package:mobarter/utils/logger.dart';
import 'package:mobarter/widgets/widgets.dart';
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
      actions: [
        IconButton(
          padding: EdgeInsets.only(right: 20),
          icon: Icon(
            themeState.isDarkModeEnabled ? Icons.dark_mode : Icons.light_mode,
            size: 22,
          ),
          onPressed: () {
            themeState.toggleTheme();
          },
        ),
      ],
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
          listTile(
            context,
            title: "Bank Account",
            subtitle: "Manage your bank accounts",
            icon: Icons.food_bank,
            onTap: () {
              pushScreen(
                context,
                screen: BankAccountPage(),
                withNavBar: false,
                pageTransitionAnimation: PageTransitionAnimation.slideUp,
              );
            },
          ),

          // listTile(
          //   context,
          //   title: "Theme",
          //   subtitle: 'Toggle theme',
          //   icon: Icons.graphic_eq,
          //   trailing: Transform.scale(
          //     scale: 0.6,
          //     child: Switch(
          //       padding: EdgeInsets.all(0),
          //       value: themeState.isDarkModeEnabled,
          //       // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          //       onChanged: (enabled) {
          //         if (enabled) {
          //           themeState.setDarkTheme();
          //         } else {
          //           themeState.setLightTheme();
          //         }
          //       },
          //     ),
          //   ),
          // ),
          listTile(
            context,
            title: "Support & Community",
            subtitle: 'Contact customer support',
            icon: Icons.support_agent_rounded,
            onTap: () {
              btmSheet(ctx: context, w: ShowSupports());
            },
          ),

          listTile(
            context,
            title: "Socials",
            subtitle: 'Social Media Pages',
            // todo: use proper icons
            icon: Icons.social_distance,
            onTap: () {
              btmSheet(ctx: context, w: ShowSocials());
            },
          ),
          listTile(
            context,
            title: "Docs",
            subtitle: 'Privacy and Legal Agreements',
            icon: Icons.link,
            onTap: () {
              btmSheet(ctx: context, w: DocsLinks());
            },
          ),
          listTile(
            context,
            title: "Learn",
            subtitle: 'Tutorials and Guide on Mobarter',
            icon: Icons.video_camera_front,
            onTap: () {
              btmSheet(ctx: context, w: ShowLearn());
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
