import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/electricity_bill/logic/provider.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/toast.dart';

class AccountNoField extends ConsumerWidget {
  AccountNoField({super.key});
  final TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = electricBillRead(ref);

    return textField(
      label: 'Meter/Account Number',
      // helperText: "Ensure the no. belogs to the specified network",
      maxLength: 11,
      // controller: text,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // Allow digits only
        LengthLimitingTextInputFormatter(11), // Enforces the limit
      ],
      onChanged: (value) {
        if (value.length > 11) {
          value = value.substring(0, 11); // Limit to 11 digits
          apptToast(context, "Maximum 11 digits allowed");
          return;
        }
        // text.text = value;
        provider.updateAccountNo(value);
      },
    );
  }
}
