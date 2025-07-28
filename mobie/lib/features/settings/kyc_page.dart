
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/webview.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class KYCTile extends HookWidget {
  const KYCTile({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_appInfo(Options$Query$static_appInfo());
    final appInfo = result.result.parsedData?.static_appInfo;

    if (appInfo == null || result.result.hasException) {
      return SizedBox.shrink();
    }

    final url = appInfo.selfKycUrl;

    return listTile(
      context,
      title: "KYC Verification",
      subtitle: "Verification Pending",
      icon: Icons.verified_user_outlined,
      onTap: () async {
        pushScreen(
          context,
          screen: AppWebView(
            url: url,
            title: 'KYC Verification',
            info: 'Verify your account using the Self Protocol app',
          ),
          withNavBar: false,
          pageTransitionAnimation: PageTransitionAnimation.slideUp,
        );
      },
    );
  }
}
