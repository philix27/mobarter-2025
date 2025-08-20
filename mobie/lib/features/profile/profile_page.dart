import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/features/profile/presentation/1enter_names.dart';
import 'package:mobarter/features/profile/presentation/3nin_bvn.dart';
import 'package:mobarter/features/profile/presentation/5address.dart';
import 'package:mobarter/features/profile/presentation/phone/6phone.dart';
import 'package:mobarter/features/profile/presentation/kyc_page.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/widgets/widgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return appScaffold(context, title: "Profile", body: DisplayProfile());
  }
}

class DisplayProfile extends HookConsumerWidget {
  DisplayProfile({super.key});
  final authSvc = AuthService();

  @override
  Widget build(BuildContext context, ref) {
    final user = authSvc.user();
    final mainTitleStyle = TextStyle(fontSize: 13, fontWeight: FontWeight.w400);
    final subTitleStyle = TextStyle(fontSize: 12, fontWeight: FontWeight.w700);
    final result = useQuery$kyc_profile(Options$Query$kyc_profile());

    if (result.result.isLoading) {
      return const LoadingIndicator();
    }

    final profile = result.result.parsedData?.kyc_profile;

    openPage(String title, Widget child) {
      pushScreen(
        context,
        screen: KycPage(title: title, child: child),
        withNavBar: false,
        pageTransitionAnimation: PageTransitionAnimation.slideUp,
      );
    }

    section(String title, Function()? onTap, bool? hasValue) {
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
            hasValue == null || hasValue == false
                ? InkWell(
                    onTap: onTap,
                    child: Text(
                      "UPDATE",
                      style: subTitleStyle.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  )
                : Text(
                    "INFO",
                    style: subTitleStyle.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
          ],
        ),
      );
    }

    row(String title, String title2) {
      return Container(
        decoration: BoxDecoration(color: Theme.of(context).cardColor),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: mainTitleStyle),
            Text(title2, style: subTitleStyle),
          ],
        ),
      );
    }

    return Column(
      spacing: 0,
      children: [
        // listTile(title: "Email", subtitle: user.email),
        section(
          user?.email ?? "-",
          () => openPage("Personal Info", EnterNames1()),
          false,
          // profile!.firstname?.isNotEmpty,
        ),
        row("First name", profile?.firstname ?? "-"),
        row("Last name", profile?.lastname ?? "-"),
        profile?.middlename != null
            ? row("Middle name", profile?.middlename ?? "-")
            : SizedBox.shrink(),
        row("Gender", profile?.gender ?? "-"),
        row("Date of Birth", profile?.dob ?? "-"),

        SizedBox(height: 30),
        section(
          "Phone number",
          () => openPage("Phone number", EnterPhone6()),
          profile?.phone?.isNotEmpty,
        ),
        row("Phone", profile?.phone ?? "-"),

        SizedBox(height: 30),
        section(
          "Banking Info",
          () => openPage("Banking Info", EnterBvnNin3()),
          profile?.bvn?.isNotEmpty,
        ),
        row("BVN", profile?.bvn ?? "-"),
        row("NIN", profile?.nin ?? "-"),

        SizedBox(height: 30),
        section(
          "Address",
          () => openPage("Home Address", HomeAddress5()),
          profile?.state?.isNotEmpty,
        ),
        row("State", profile?.state ?? "-"),
        row("Country", profile?.country_code ?? "-"),
      ],
    );
  }
}
