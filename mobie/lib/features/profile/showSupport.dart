import 'package:flutter/material.dart';
import 'package:mobarter/connect_demo/connect_logic.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/row.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ShowSupports extends StatelessWidget {
  const ShowSupports({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.5),
      child: Column(
        spacing: 0,
        children: [
          row(
            title: "Community",
            subtitle: "Join our telegram community",
            icon: Icons.group,
          ),
          row(
            icon: Icons.support_agent,
            title: "Customer Care",
            subtitle: "Have complaints, reach out to our support team",
          ),
        ],
      ),
    );
  }
}
