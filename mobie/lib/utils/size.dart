import 'package:flutter/material.dart';

getH(BuildContext context, double height) {
  final screenHeight = MediaQuery.of(context).size.height;
  final containerHeight = screenHeight * height; // 20% of screen height
  return containerHeight;
}

getW(BuildContext context, double width) {
  final screenwidth = MediaQuery.of(context).size.width;
  final containerwidth = screenwidth * width; // 20% of screen width
  return containerwidth;
}
