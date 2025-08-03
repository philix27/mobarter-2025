import 'package:flutter/material.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:toastification/toastification.dart';

enum ToastStatus { error, warning, success, info }

ToastificationItem appToast(
  BuildContext context,
  String text, {
  String? subtitle,
  ToastificationType? type,
}) {
  return toastification.show(
    context: context, // optional if you use ToastificationWrapper
    type: type,
    style: ToastificationStyle.flat,
    autoCloseDuration: const Duration(seconds: 4),
    title: Text(text, style: TextStyle(fontWeight: FontWeight.w600)),
    description: subtitle != null
        ? RichText(text: TextSpan(text: subtitle))
        : null,
    alignment: Alignment.topCenter,
    direction: TextDirection.ltr,
    animationDuration: const Duration(milliseconds: 300),
    // animationBuilder: (context, animation, alignment, child) {
    //   return FadeTransition(
    //     // turns: animation,
    //     opacity: 1.0,
    //     child: child,
    //   );
    // },
    showIcon: true, // show or hide the icon
    // primaryColor: colorPrimary,
    // backgroundColor: Colors.white,
    // backgroundColor: Colors.red.shade200,
    foregroundColor: Colors.black,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
      BoxShadow(
        color: Color(0x07000000),
        blurRadius: 16,
        offset: Offset(0, 16),
        spreadRadius: 0,
      ),
    ],
    showProgressBar: true,
    closeButton: ToastCloseButton(
      showType: CloseButtonShowType.onHover,
      buttonBuilder: (context, onClose) {
        return OutlinedButton.icon(
          onPressed: onClose,
          icon: const Icon(Icons.close, size: 20),
          label: const Text('Close'),
        );
      },
    ),
    closeOnClick: false,
    pauseOnHover: true,
    dragToClose: true,
    applyBlurEffect: true,
  );
}
