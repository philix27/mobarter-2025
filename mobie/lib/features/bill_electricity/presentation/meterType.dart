import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_electricity/logic/provider.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/listTile.dart';

class Electric_MeterType extends ConsumerWidget {
  Electric_MeterType({super.key});
  final TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watch = electricBillWatch(ref);

    getTitle() {
      if (watch.isPrepaid == null) return "Select Payment Type";
      if (watch.isPrepaid!) return "PREPAID";
      return "POSTPAID";
    }

    return listTile(
      context,
      title: getTitle(),
      trailing: Text(
        "Meter Type",
        style: TextStyle(fontSize: 12, color: Theme.of(context).disabledColor),
      ),
      onTap: () {
        btmSheet(ctx: context, w: PaymentTypes());
      },
    );
  }
}

class PaymentTypes extends ConsumerWidget {
  const PaymentTypes({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final provider = electricBillRead(ref);
    final watch = electricBillWatch(ref);

    return Column(
      children: [
        listTile(
          context,
          title: "PREPAID",
          tileColor: watch.isPrepaid == null
              ? null
              : watch.isPrepaid!
              ? Theme.of(context).splashColor
              : null,
          onTap: () {
            provider.updateIsPrepaid(true);
          },
        ),
        listTile(
          context,
          title: "POSTPAID",
          onTap: () {
            provider.updateIsPrepaid(false);
          },
          tileColor: watch.isPrepaid == null
              ? null
              : !watch.isPrepaid!
              ? Theme.of(context).splashColor
              : null,
        ),
      ],
    );
  }
}
