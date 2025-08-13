import 'package:flutter/material.dart';
import 'package:mobarter/widgets/btn.dart';

class BtnRow extends StatelessWidget {
  BtnRow({super.key, required this.onNextPressed, required this.onPrevPressed});

  void Function()? onPrevPressed;
  void Function()? onNextPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Btn(title: "Prev", isSecondary: true, onPressed: onPrevPressed),
        Btn(title: "Next", onPressed: onNextPressed),
      ],
    );
  }
}
