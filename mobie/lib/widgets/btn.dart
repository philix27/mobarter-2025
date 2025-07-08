import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';

Widget btn({required String title, void Function()? onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(),
    child: Text(title),
  );
}
