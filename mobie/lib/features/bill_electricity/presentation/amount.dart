import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_electricity/logic/provider.dart';
import 'package:mobarter/graphql/schema/fx.gql.dart';

import 'package:mobarter/widgets/widgets.dart';

class ElectricityAmount extends HookConsumerWidget {
  const ElectricityAmount({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final r = electricBillRead(ref);
    final result = useQuery$FxRate_GetAll(Options$Query$FxRate_GetAll());

    final data = result.result;
    if (data.isLoading) {
      return const LoadingIndicator();
    }

    final rate = data.parsedData?.fxRate_GetAll.NG ?? 0;

    calcPrice(double amt) {
      final amountFiatN = amt ?? 0.0;

      return amountFiatN / rate;
    }

    return textField(context,
      label: 'Amount',
      maxLength: 7,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // Allow digits only
        LengthLimitingTextInputFormatter(6), // Enforces the limit
      ],

      onChanged: (value) {
        if (value.length > 6) {
          value = value.substring(0, 6); // Limit to 11 digits3
          appToast(context, "Maximum 6 digits allowed");
          return;
        }
        final double amt = double.tryParse(value) ?? 0.0;
        r.updateAmount(amountFiat: amt, amountCrypto: calcPrice(amt));
      },
    );
  }
}
