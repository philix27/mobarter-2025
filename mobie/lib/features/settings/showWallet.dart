import 'package:flutter/material.dart';
import 'package:mobarter/features/firestore/wallet.dart';
import 'package:mobarter/utils/size.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ShowWallet extends StatelessWidget {
  ShowWallet({super.key});
  final walletStore = WalletStoreService();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.5),
      child: Column(
        spacing: 0,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FutureBuilder(
            future: walletStore.userWalletAddress(),
            builder: (BuildContext context, snapshot) {
              if (!snapshot.hasData) {
                return Text("No wallet found");
              }

              final bg = Theme.of(context).hintColor;
              final w = snapshot.data!;
              return Column(
                children: [
                  PrettyQrView.data(
                    data: w,
                    decoration: PrettyQrDecoration(
                      background: bg,
                      quietZone: PrettyQrQuietZone.standart,
                    ),
                  ),
                  Text(
                    w,
                    style: TextStyle(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
