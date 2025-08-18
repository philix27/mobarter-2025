import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bank_account/add/accountName.dart';
import 'package:mobarter/features/bank_account/logic/provider.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
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
    final r = bankRead(ref);

    return textField(
      context,
      label: 'Account No.',
      helperText: "Ensure name matches your personal documents",
      maxLength: len,
      // controller: phone,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // Allow digits only
        LengthLimitingTextInputFormatter(len), // Enforces the limit
      ],
      onChanged: (value) {
        if (value.length > len) {
          value = value.substring(0, len); // Limit to 11 digits
          appToast(context, "Maximum $len digits allowed");
          return;
        }
        r.updateNo(value);
        if (value.length == 10) {
          btmSheet(ctx: context, h: 0.25, w: FetchAccountName());
        }
      },
    );
  }
}
