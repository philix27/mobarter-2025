import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/updates/data/update_repository.dart';
import 'package:mobarter/features/updates/data/url.dart';
import 'package:mobarter/features/updates/models/status.dart';
import 'package:url_launcher/url_launcher.dart';

class OptionalUpdateCard extends ConsumerWidget {
  const OptionalUpdateCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updateStatusValue = ref.watch(deviceUpdateStatusProvider);

    return updateStatusValue.when(
      loading: () => const SizedBox.shrink(),
      error: (e, s) => const SizedBox.shrink(),
      data: (updateStatus) {
        if (updateStatus == UpdateStatus.optional) {
          return Card(
            color: Colors.deepOrange.shade200,
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                // launch the store
                launchUrl(
                  Uri.parse(storeUrl!),
                  mode: LaunchMode.externalApplication,
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.arrow_up_right_diamond_fill),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "There is an available update",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Icon(CupertinoIcons.right_chevron, size: 20),
                  ],
                ),
              ),
            ),
          );
        } else {
          // not optional
          return const SizedBox.shrink();
        }
      },
    );
  }
}
