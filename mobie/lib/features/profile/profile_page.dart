import 'package:flutter/material.dart';
import 'package:mobarter/config/env.dart';
import 'package:mobarter/features/profile/presentation/kyc_page.dart';
import 'package:mobarter/widgets/widgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      context,
      title: "Profile",
      body: Column(
        spacing: 0,
        children: [
          // listTile(title: "Email", subtitle: user.email),
          listTile(context, title: "Phone"),
          listTile(context, title: "Gender"),
          listTile(context, title: "Date Of Birth"),
          listTile(context, title: "BVN"),
          listTile(context, title: "NIN"),
          isDevEnv
              ? Btn(
                  title: "KYC",
                  onPressed: () {
                    pushScreen(           
                      context,
                      screen: KycPage(),
                      withNavBar: false,
                      pageTransitionAnimation: PageTransitionAnimation.slideUp,
                    );
                  },
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
