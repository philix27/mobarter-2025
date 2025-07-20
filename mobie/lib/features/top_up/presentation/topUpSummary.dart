import 'package:flutter/material.dart';
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
