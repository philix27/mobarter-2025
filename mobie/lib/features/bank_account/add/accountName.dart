import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/widgets/listTile.dart';

class AccountName extends ConsumerWidget {
  AccountName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return listTile(context, title: 'Account Name');
  }
}
