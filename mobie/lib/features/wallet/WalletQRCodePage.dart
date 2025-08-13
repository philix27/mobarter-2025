import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobarter/features/firestore/wallet.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class WalletQrCodePage extends StatelessWidget {
  WalletQrCodePage({super.key});
  final walletStore = WalletStoreService();

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      context,
      title: "Wallet Address",
      body: Column(
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
                  SizedBox(height: 20),
                  SizedBox(
                    width: getW(context, 0.7),
                    child: Text(
                      w,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Btn(
                    title: "Copy",
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: w)).then((_) {
                        appToast(context, "Copied");
                      });
                    },
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
