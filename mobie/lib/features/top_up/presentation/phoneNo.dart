import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/top_up/logic/provider.dart';
import 'package:mobarter/widgets/inputText.dart';

class PhoneTextField extends ConsumerWidget {
  PhoneTextField({super.key});
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topUpdata = ref.read(topUpDataProvider.notifier);

    return textField(
      label: 'Phone No.',
      helperText: "Ensure the no. belogs to the specified network",
      maxLength: 11,
      controller: phone,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // Allow digits only
        LengthLimitingTextInputFormatter(11), // Enforces the limit
      ],
      onChanged: (value) {
        if (value.length > 11) {
          value = value.substring(0, 11); // Limit to 11 digits
          return;
        }
        phone.text = value;
        // topUpdata.updatePhone(phone.text);
      },
    );
  }
}
