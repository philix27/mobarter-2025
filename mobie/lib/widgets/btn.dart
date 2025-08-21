import 'package:flutter/material.dart';
import 'package:mobarter/widgets/loading.dart';

class Btn extends StatelessWidget {
  Btn({
    super.key,
    required this.title,
    this.loading,
    this.disabled,
    this.isSecondary,
    this.onPressed,
  });

  final String title;
  void Function()? onPressed;
  final bool? loading;
  final bool? disabled;
  final bool? isSecondary;

  @override
  Widget build(BuildContext context) {
    return loading != null && (loading ?? false)
        ? LoadingIndicator(height: 40)
        : ElevatedButton(
            onPressed: disabled != null && (disabled ?? false)
                ? null
                : onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: (isSecondary ?? false)
                  ? Theme.of(context).highlightColor
                  : Theme.of(context).primaryColor, // Background color
              foregroundColor: Colors.white, // Text (foreground) color
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 1, // Shadow depth
            ),
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 30,
                vertical: 1,
              ),
              child: Text(title),
            ),
          );
  }
}
