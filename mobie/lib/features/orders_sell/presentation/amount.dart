import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/orders_sell/logic/provider.dart';
import 'package:mobarter/graphql/schema/fx.gql.dart';
import 'package:mobarter/widgets/widgets.dart';
import 'package:toastification/toastification.dart';

class SellAmount extends HookConsumerWidget {
  const SellAmount({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final read = sellOrderRead(ref);
    final result = useQuery$FxRate_GetAll(Options$Query$FxRate_GetAll());

    final data = result.result;
    if (data.isLoading) {
      return const LoadingIndicator();
    }

    final rate = data.parsedData?.fxRate_GetAll.NG ?? 0;

    calcPrice(double amt) {
      final amountFiatN = amt;

      return amountFiatN / rate;
    }

    return textField(
      context,
      label: 'Amount',
      helperText: "Maximum of 5,000,000",
      maxLength: 7,
      // controller: phone,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // Allow digits only
        LengthLimitingTextInputFormatter(7), // Enforces the limit
      ],

      onChanged: (value) {
        if (value.length > 6) {
          value = value.substring(0, 7); // Limit to 11 digits3
          appToast(
            context,
            "Maximum 7 digits allowed",
            type: ToastificationType.warning,
          );
          return;
        }
        final double amt = double.tryParse(value) ?? 0.0;
        read.updateAmount(amountCrypto: calcPrice(amt), amountFiat: amt);
      },
    );
  }
}
