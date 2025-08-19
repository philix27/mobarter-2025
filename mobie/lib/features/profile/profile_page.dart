import 'package:flutter/material.dart';
import 'package:mobarter/features/profile/presentation/1enter_names.dart';
import 'package:mobarter/features/profile/presentation/3nin_bvn.dart';
import 'package:mobarter/features/profile/presentation/5address.dart';
import 'package:mobarter/features/profile/presentation/6phone.dart';
import 'package:mobarter/features/profile/presentation/kyc_page.dart';
import 'package:mobarter/widgets/widgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mainTitleStyle = TextStyle(fontSize: 13, fontWeight: FontWeight.w400);
    final subTitleStyle = TextStyle(fontSize: 12, fontWeight: FontWeight.w700);
    openPage(String title, Widget child) {
      pushScreen(
        context,
        screen: KycPage(title: title, child: child),
        withNavBar: false,
        pageTransitionAnimation: PageTransitionAnimation.slideUp,
      );
    }

    section(String title, Function()? onTap) {
      return Container(
        margin: EdgeInsets.only(bottom: 1),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: mainTitleStyle),
            InkWell(
              onTap: onTap,
              child: Text(
                "UPDATE",
                style: subTitleStyle.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      );
    }

    row(String title, String title2) {
      return Container(
        decoration: BoxDecoration(color: Theme.of(context).cardColor),
        padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: mainTitleStyle),
            Text(title2, style: subTitleStyle),
          ],
        ),
      );
    }

    return appScaffold(
      context,
      title: "Profile",
      body: Column(
        spacing: 0,
        children: [
          // listTile(title: "Email", subtitle: user.email),
          section("Personal", () => openPage("Personal Info", EnterNames1())),
          row("Names", "-"),
          row("Gender", "-"),
          row("Date of Birth", "-"),

          SizedBox(height: 30),
          section(
            "Phone number",
            () => openPage("Phone number", EnterPhone6()),
          ),
          row("Phone", "-"),

          SizedBox(height: 30),
          section(
            "Banking Info",
            () => openPage("Banking Info", EnterBvnNin3()),
          ),
          row("BVN", "-"),
          row("NIN", "-"),

          SizedBox(height: 30),
          section("Address", () => openPage("Home Address", HomeAddress5())),
          row("State", "-"),
          row("Street", "-"),
          row("Country", "-"),
        ],
      ),
    );
  }
}
