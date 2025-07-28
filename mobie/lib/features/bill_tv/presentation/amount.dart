import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_tv/logic/provider.dart';
import 'package:mobarter/graphql/schema/fx.gql.dart';

import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/toast.dart';

class TvBillsAmount extends HookConsumerWidget {
  const TvBillsAmount({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final topUpdata = tvBillRead(ref);
    final result = useQuery$FxRate_GetAll(Options$Query$FxRate_GetAll());

    final data = result.result;
    if (data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final rate = data.parsedData?.fxRate_GetAll.NG ?? 0;

    calcPrice(double amt) {
      final amountFiatN = amt ?? 0.0;

      return amountFiatN / rate;
    }

    return textField(
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
          apptToast(context, "Maximum 6 digits allowed");
          return;
        }
        final double amt = double.tryParse(value) ?? 0.0;
        topUpdata.updateAmountFiat(amt);
        topUpdata.updateAmountCrypto(calcPrice(amt));
      },
    );
  }
}
