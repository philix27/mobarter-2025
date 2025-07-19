import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowCurrency extends ConsumerWidget {
  const ShowCurrency({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(topUpDataProvider);
    return listTile(
      title: data.currency == null || data.currency!.isEmpty
          ? "Select Currency for payment"
          : data.currency!,
      subtitle: "Currency for payment",
      tileColor: colorCard,
      onTap: () {
        btmSheet(ctx: context, w: _ShowCurrencyList(), h: 0.5);
      },
    );
  }
}

class _ShowCurrencyList extends ConsumerWidget {
  const _ShowCurrencyList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topUpdata = ref.read(topUpDataProvider.notifier);

    return SizedBox(
      height: getH(context, 0.5),
      child: Column(
        spacing: 0,
        children: [
          listTile(
            title: "USDT",
            onTap: () {
              topUpdata.updateCurrency("USDT");
            },
          ),
          listTile(
            title: "CUSD",
            onTap: () {
              topUpdata.updateCurrency("CUSD");
            },
          ),
          listTile(
            title: "USDC",
            onTap: () {
              topUpdata.updateCurrency("USDC");
            },
          ),
        ],
      ),
    );
  }
}
