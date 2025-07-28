import 'package:flutter/material.dart';
import 'package:mobarter/features/theme/constColors.dart';

Widget btn({required String title, void Function()? onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: colorPrimary, // Background color
      foregroundColor: Colors.white, // Text (foreground) color
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 1, // Shadow depth
    ),
    child: Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 50, vertical: 1),
      child: Text(title),
    ),
  );
}
