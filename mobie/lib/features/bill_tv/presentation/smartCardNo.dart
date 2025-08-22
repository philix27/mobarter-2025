import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/bill_tv/logic/provider.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/utilities.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/widgets.dart';

class TvBillsSmartCardNoField extends HookConsumerWidget {
  TvBillsSmartCardNoField({super.key});
  final TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final read = tvBillRead(ref);
    final watch = tvBillWatch(ref);
    final result = useMutation$tvBills_validateAccount();

    validateInfo(String smartCardNumber) async {
      try {
        require(watch.bouquetDescription, "Select a bouquet");
        require(watch.smartCardNo, "Select a bouquet");

        final response = await result
            .runMutation(
              Variables$Mutation$tvBills_validateAccount(
                input: Input$TvBill_ValidateAccountInput(
                  service: watch.bouquetDescription!,
                  smartCardNumber: watch.smartCardNo!,
                ),
              ),
            )
            .networkResult;

        validateGqlQuery(response);

        if (response?.data != null) {
          final customerName =
              response!.parsedData?.tvBills_validateAccount.customerName;

          if (customerName!.isNotEmpty) {
            read.updateSmartCardNo(customerName);
          }
        }
      } catch (e) {
        appToastErr(context, e.toString());
      }
    }

    return textField(
      context,
      label: 'Smart Card Number',
      helperText: watch.customerName,
      maxLength: 15,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // Allow digits only
        LengthLimitingTextInputFormatter(15), // Enforces the limit
      ],
      onChanged: (value) {
        if (value.length > 11) {
          value = value.substring(0, 15); // Limit to 11 digits
          appToast(context, "Maximum 11 digits allowed");
          return;
        }
        read.updateSmartCardNo(value);
        if (value.length > 9) {
          validateInfo(value);
        }
      },
    );
  }
}
