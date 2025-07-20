import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';

import 'package:mobarter/widgets/inputText.dart';
import 'package:mobarter/widgets/toast.dart';

class AirtimeWidget extends ConsumerWidget {
  const AirtimeWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final topUpdata = topUpRead(ref);

    return textField(
      label: 'Amount',
      helperText: "Maximum of 50,000",
      maxLength: 6,
      // controller: phone,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // Allow digits only
        LengthLimitingTextInputFormatter(6), // Enforces the limit
      ],
      onChanged: (value) {
        if (value.length > 6) {
          value = value.substring(0, 6); // Limit to 11 digits
          apptToast(context, "Maximum 11 digits allowed");
          return;
        }

        topUpdata.updateAmountFiat(double.parse(value), "Airtime");
      },
    );
  }
}
