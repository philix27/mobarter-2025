import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/utils/logger.dart' show appLogger;
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/listTile.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';

class TopUpSummaryPage extends HookConsumerWidget {
  final String recipientPhone;
  final String networkProvider;
  final String amountToPay;
  final String amountOfProduct;
  final String? cashback;
  const TopUpSummaryPage({
    super.key,
    required this.recipientPhone,
    required this.networkProvider,
    required this.amountToPay,
    required this.amountOfProduct,
    required this.cashback,
  });

  @override
  Widget build(BuildContext context, ref) {
    enterPin() async {
      btmSheet(
        ctx: context,
        w: EnterPinAndSubmit(
          recipientPhone: recipientPhone,
          networkProvider: networkProvider,
          amountToPay: amountToPay,
          amountOfProduct: amountOfProduct,
          cashback: cashback,
        ),
        // h: 0.5,
      );
    }

    return appScaffold(context,
      title: "Transaction Summary",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          spacing: 18,

          children: [
            simpleRow(title: "Recipient number", subtitle: recipientPhone),
            simpleRow(title: "Nettwork Provider", subtitle: networkProvider),
            simpleRow(title: "Amount", subtitle: amountOfProduct),
            simpleRow(title: "Pay", subtitle: amountToPay),
            // simpleRow(title: "Cashback bonus", subtitle: cashback),
            SizedBox(height: 20),
            btn(title: "Send", onPressed: enterPin),
          ],
        ),
      ),
    );
  }
}

class EnterPinAndSubmit extends HookConsumerWidget {
  final String recipientPhone;
  final String networkProvider;
  final String amountToPay;
  final String amountOfProduct;
  final String? cashback;
  EnterPinAndSubmit({
    super.key,
    required this.recipientPhone,
    required this.networkProvider,
    required this.amountToPay,
    required this.amountOfProduct,
    required this.cashback,
  });
  final TextEditingController pin = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final d = topUpWatch(ref);

    final result = useMutation$Utility_purchaseAirtime();

    purchase() async {
      if (pin.text.length < 6) {
        apptToast(context, "Minimum of 6 characters");
        return;
      }

      // ! Submit

      final response = await result
          .runMutation(
            Variables$Mutation$Utility_purchaseAirtime(
              input: Input$Utilities_PurchaseAirtimeInput(
                amount: d.amountFiat!,
                countryCode: Enum$Country.NG,
                operatorId: d.networkOperatorId!,
                phoneNo: d.phoneNo!,
                payment: Input$PaymentInput(
                  transaction_pin: "transaction_pin",
                  user_uid: "user_uid",
                ),
              
              ),
            ),
          )
          .networkResult;

      appLogger.e("Purchase airtime $response");

      final msg = response!.parsedData?.utility_purchaseAirtime;

      apptToast(context, msg!.title, subtitle: msg.subtitle);
    }

    return Column(
      spacing: 20,
      children: [
        appText("Enter your pin to confirm transaction"),
        textField(
          label: 'Enter Transaction Pin',
          maxLength: 6,
          controller: pin,
          keyboardType: TextInputType.number,

          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow digits only
            LengthLimitingTextInputFormatter(6), // Enforces the limit
          ],
        ),
        btn(title: "Send", onPressed: purchase),
      ],
    );
  }
}
