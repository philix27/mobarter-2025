import 'package:flutter/material.dart';

Widget walletQRCode({required String title, required Widget body}) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      ),
    ),
    body: body,
  );
}
