import 'package:flutter/material.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/widgets/loading.dart';

Widget btn({
  required String title,
  void Function()? onPressed,
  bool? loading,
  bool? disabled,
}) {
  return loading != null && loading
      ? LoadingIndicator(height: 40)
      : ElevatedButton(
          onPressed: disabled != null && disabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: colorPrimary, // Background color
            foregroundColor: Colors.white, // Text (foreground) color
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 1, // Shadow depth
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 50, vertical: 1),
            child: Text(title),
          ),
        );
}
