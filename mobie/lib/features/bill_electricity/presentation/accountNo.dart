import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_electricity/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/utils/logger.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/toast.dart';

class AccountNo extends HookConsumerWidget {
  AccountNo({super.key});
  final TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = electricBillRead(ref);
    final w = electricBillWatch(ref);
    final mutation = useMutation$ElectricityBill_verifyAccount();

    getAcctInfo() async {
      try {
        require(null, "Select a provider");
        require(w.providerName, "Select a provider");
        require(w.isPrepaid, "Select a Meter type");
        require(w.accountNo, "Account No. needed");

        final response = await mutation
            .runMutation(
              Variables$Mutation$ElectricityBill_verifyAccount(
                input: Input$ElectricityBill_ValidateAccountInput(
                  countryCode: Enum$Country.NG,
                  meterNumber: w.accountNo!,
                  meterType: w.isPrepaid! ? 'PREPAID' : "POSTPAID",
                  service: w.providerName!,
                ),
              ),
            )
            .networkResult;

        appLogger.e("Purchase airtime $response");

        final result = response!.parsedData?.electricityBill_verifyAccount;
        provider.updateCustomerInfo(
          result!.customerName,
          result.customerAddress,
        );
      } catch (e) {
        apptToast(context, e.toString());
      }
    }

    return textField(
      label: 'Meter/Account Number',
      // helperText: "Ensure the no. belogs to the specified network",
      maxLength: 11,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // Allow digits only
        LengthLimitingTextInputFormatter(11), // Enforces the limit
      ],
      onChanged: (value) {
        if (value.length > 13) {
          value = value.substring(0, 13); // Limit to 11 digits
          apptToast(context, "Maximum 13 digits allowed");
          return;
        }
        if (value.length >= 11 && value.length <= 13) {
          provider.updateAccountNo(value);
          getAcctInfo();
        }
      },
    );
  }
}
