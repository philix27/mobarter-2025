import 'package:flutter/material.dart';
import 'package:mobarter/connect_demo/connect_logic.dart';
import 'package:mobarter/utils/size.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ShowWallet extends StatelessWidget {
  const ShowWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.5),
      child: Column(
        spacing: 0,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PrettyQrView.data(
            data: ConnectLogic.getPublicAddress(),
            decoration: const PrettyQrDecoration(
              // image: PrettyQrDecorationImage(
              //   image: AssetImage('images/flutter.png'),
              // ),
              quietZone: PrettyQrQuietZone.standart,
            ),
          ),
          Text(
            ConnectLogic.getPublicAddress(),
            style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
