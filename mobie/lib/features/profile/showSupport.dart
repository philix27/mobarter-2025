import 'package:flutter/material.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowSupports extends StatelessWidget {
  const ShowSupports({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.5),
      child: Column(
        spacing: 0,
        children: [
          listTile(
            title: "Community",
            subtitle: "Join our telegram community",
            icon: Icons.group,
          ),
          listTile(
            icon: Icons.support_agent,
            title: "Customer Care",
            subtitle: "Have complaints, reach out to our support team",
          ),
        ],
      ),
    );
  }
}
