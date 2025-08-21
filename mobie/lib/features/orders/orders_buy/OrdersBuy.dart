import 'package:flutter/material.dart';
import 'package:mobarter/utils/size.dart';

class OrdersBuy extends StatelessWidget {
  const OrdersBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getH(context, 0.3),
          child: Center(child: Text("Coming soon")),
        ),
      ],
    );
  }
}
