import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_top_up/logic/provider.dart';
import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/toast.dart';

class AccountNo extends ConsumerWidget {
  AccountNo({super.key});
  final TextEditingController phone = TextEditingController();

  @override
  void dispose() {
    phone.dispose(); // 👈 Clean up the controller when widget is removed
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final len = 10;
    final topUpdata = topUpRead(ref);

    return textField(
      context,
      label: 'Account No.',
      helperText: "Ensure it name matches your personal documents",
      maxLength: len,
      // controller: phone,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // Allow digits only
        LengthLimitingTextInputFormatter(11), // Enforces the limit
      ],
      onChanged: (value) {
        if (value.length > len) {
          value = value.substring(0, len); // Limit to 11 digits
          appToast(context, "Maximum ${len} digits allowed");
          return;
        }
        // phone.text = value;
        topUpdata.updatePhone(value);
      },
    );
  }
}
