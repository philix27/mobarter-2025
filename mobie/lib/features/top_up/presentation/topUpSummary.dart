import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/fx.gql.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/pages/TopUpPage.dart';
import 'package:mobarter/utils/logger.dart' show appLogger;
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/toast.dart';

class ShowTopUpSummary extends HookConsumerWidget {
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
  Widget build(BuildContext context, ref) {
    final d = topUpWatch(ref);

    final result = useMutation$Utility_purchaseAirtime();

    purchase() async {
      final response = await result
          .runMutation(
            Variables$Mutation$Utility_purchaseAirtime(
              input: Input$Utilities_PurchaseAirtimeInput(
                amount: d.amountFiat!,
                countryCode: Enum$Country.NG,
                operatorId: d.networkOperatorId!,
                phoneNo: d.phoneNo!,
                transaction_hash: '${d.phoneNo!}',
              ),
            ),
          )
          .networkResult;

      appLogger.e("Purchase airtime $response");

      final msg = response!.parsedData?.utility_purchaseAirtime.message;

      apptToast(context, "Successful", subtitle: "Your airtime has been sent");
    }

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
          btn(title: "Send", onPressed: purchase),
        ],
      ),
    );
  }
}
