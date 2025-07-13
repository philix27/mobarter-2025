import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/features/updates/data/update_repository.dart';
import 'package:mobarter/features/updates/models/build_version.dart';
import 'package:mobarter/features/updates/models/status.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:url_launcher/url_launcher.dart';

class OptionalUpdateCard extends HookWidget {
  const OptionalUpdateCard({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_appInfo(Options$Query$static_appInfo());
    final appInfo = result.result.parsedData?.static_appInfo;

    if (result.result.hasException) {
      print("Flutter Hook exception");
    }

    if (appInfo == null) {
      return const SizedBox.shrink();
    }

    final url = Platform.isIOS ? appInfo.iosAppUrl : appInfo.androidAppUrl;

    return FutureBuilder<UpdateStatus>(
      future: UpdateRepository().checktUpdateStatus(
        BuildVersion(
          minBuild: appInfo.minBuild.round(),
          deployedBuild: appInfo.deployedBuild.round(),
        ),
      ),
      builder: (BuildContext ctx, AsyncSnapshot<UpdateStatus> snap) {
        final status = snap.data;
        if (status == UpdateStatus.optional) {
          return Card(
            elevation: 0.0,
            // color: Colors.deepOrange.shade100,
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                // launch the store
                launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.arrow_up_right_diamond_fill),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "There is an available update",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Icon(CupertinoIcons.right_chevron, size: 20),
                  ],
                ),
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
