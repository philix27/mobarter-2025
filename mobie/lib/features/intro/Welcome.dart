import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:mobarter/features/intro/intro_screen.dart';
import 'package:mobarter/features/updates/data/update_repository.dart';
import 'package:mobarter/features/updates/models/build_version.dart';
import 'package:mobarter/features/updates/models/status.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/utils/appImages.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

class WelcomePage extends ConsumerWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [SelctDisplay()]),
    );
  }
}

class SelctDisplay extends HookWidget {
  const SelctDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_appInfo(Options$Query$static_appInfo());
    final appInfo = result.result.parsedData?.static_appInfo;

    if (result.result.hasException) {
      print("Flutter Hook exception");
    }

    if (appInfo == null) {
      return IntroScreen(
        pageColor: Colors.deepPurple.shade100,
        imagePath: Appimages.appUpdate,
        title: "Connection Error",
        subtitle: "Kindly check your network connection and try again",
        activeIndex: 0,
        button: btn(
          title: "Restart",
          onPressed: () {
            Phoenix.rebirth(context);
            // launchUrl(Uri.parse(_url), mode: LaunchMode.externalApplication);
          },
        ),
      );
    }

    final _url = Platform.isIOS ? appInfo.iosAppUrl : appInfo.androidAppUrl;

    return FutureBuilder<UpdateStatus>(
      future: UpdateRepository().checktUpdateStatus(
        BuildVersion(
          minBuild: appInfo.minBuild.round(),
          deployedBuild: appInfo.deployedBuild.round(),
        ),
      ),
      builder: (BuildContext ctx, AsyncSnapshot<UpdateStatus> snap) {
        final status = snap.data;
        if (status == UpdateStatus.mandatory) {
          return IntroScreen(
            pageColor: Colors.deepPurple.shade100,
            imagePath: Appimages.appUpdate,
            title: "Update Required",
            subtitle:
                "A new version is avaliable. Kindly visit the store to get the latest features.",
            activeIndex: 0,
            button: btn(
              title: "Update now",
              onPressed: () {
                launchUrl(
                  Uri.parse(_url),
                  mode: LaunchMode.externalApplication,
                );
              },
            ),
          );
        }
        
        return LiquidSwipe(
          pages: [
            IntroScreen(
              pageColor: Colors.grey.shade200,
              imagePath: Appimages.introInvest,
              title: "Your all-in-one crypto payment solution",
              subtitle: 'Make payemts & pay bills using your crypro assets',
              activeIndex: 0,
            ),
            IntroScreen(
              activeIndex: 1,
              pageColor: Colors.white,
              imagePath: Appimages.introSavings,
              title: "Save and Invest your crypto assets ",
              subtitle: 'Earn passively as you save towards your goals',
            ),
          ],
        );
      },
    );
  }
}
