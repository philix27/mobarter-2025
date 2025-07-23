import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/graphql/schema/fx.gql.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowTopUpSummary extends StatelessWidget {
  final String recipientPhone;
  final String networkProvider;
  final String amountToPay;
  final String amountOfProduct;
  final String? cashback;
  const ShowTopUpSummary({
    super.key,
    required this.recipientPhone,
    required this.networkProvider,
    required this.amountToPay,
    required this.amountOfProduct,
    required this.cashback,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.5),
      child: Column(
        spacing: 18,
        children: [
          SizedBox(height: 10),
          _PriceToPay(amountFiat: double.tryParse(amountToPay)),
          simpleRow(title: "Recipient number", subtitle: recipientPhone),
          simpleRow(title: "Nettwork Provider", subtitle: networkProvider),
          simpleRow(title: "Amount", subtitle: amountOfProduct),
          simpleRow(title: "Pay", subtitle: amountToPay),
          // simpleRow(title: "Cashback bonus", subtitle: cashback),
          btn(title: "Send", onPressed: () {}),
        ],
      ),
    );
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

    // print("Amount To Pay $price");
    // final double costP = rate * price;

    // print("Amount To Rate $costP");
    return simpleRow(title: "Pay", subtitle: price.toStringAsFixed(2));
    // return Text(
    //   price.toStringAsFixed(2),
    //   style: TextStyle(
    //     fontSize: 16,
    //     fontWeight: FontWeight.w600,
    //     color: Colors.black,
    //   ),
    // );
  }
}
