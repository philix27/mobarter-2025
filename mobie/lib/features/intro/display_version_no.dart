import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/updates/data/update_repository.dart';

class DisplayAppVersion extends StatelessWidget {
  const DisplayAppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext ctx, WidgetRef ref, child) {
        final AsyncValue<int> currentBuild = ref.watch(deviceBuildProvider);
        return currentBuild.when(
          data: (value) {
            return Text(
              "mobarter: v: $value",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.grey,
              ),
            );
          },
          error: (e, st) => Text("There was an error $e"),
          loading: () => CircularProgressIndicator(),
        );
      },
    );
  }
}
