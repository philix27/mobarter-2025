import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';
import 'package:mobarter/graphql/schema/fx.gql.dart';

class CryptoAmountPay extends ConsumerWidget {
  const CryptoAmountPay({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = topUpWatch(ref);
    return _PriceToPay(amountFiat: data.amountFiat);
  }
}

class _PriceToPay extends HookWidget {
  final double? amountFiat;

  _PriceToPay({super.key, required this.amountFiat});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$FxRate_GetAll(Options$Query$FxRate_GetAll());

    final data = result.result;
    if (data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final rate = data.parsedData?.fxRate_GetAll.NG ?? 0;
    print("Amount To usdRate $rate");

    final amountFiatN = amountFiat ?? 0.0;

    final price = amountFiatN / rate;

    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style, // Inherit default style
        children: <TextSpan>[
          TextSpan(
            text: "CUSD ",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black45,
            ),
          ),
          TextSpan(
            text: price.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
