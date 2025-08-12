import 'package:flutter/material.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowSupports extends StatelessWidget {
  const ShowSupports({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 0,
      children: [
        listTile(
          context,
          title: "Community",
          subtitle: "Join our telegram community",
          icon: Icons.group,
        ),
        listTile(
          context,
          icon: Icons.support_agent,
          title: "Customer Care",
          subtitle: "Have complaints, reach out to our support team",
        ),
      ],
    );
  }
}
