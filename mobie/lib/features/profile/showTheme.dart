import 'package:flutter/material.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/row.dart';

class ShowTheme extends StatelessWidget {
  const ShowTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.3),
      child: Column(
        spacing: 0,
        children: [
          row(title: "Light", icon: Icons.light_mode),
          row(title: "Dark", icon: Icons.dark_mode),
        ],
      ),
    );
  }
}
