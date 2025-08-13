import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/bill_tv/logic/provider.dart';
import 'package:mobarter/features/bill_tv/presentation/smartCardNo.dart';
import 'package:mobarter/features/bill_tv/presentation/bouquet.dart';
import 'package:mobarter/features/bill_tv/presentation/providers.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/widgets/widgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class TvBillsPage extends ConsumerWidget {
  const TvBillsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watch = tvBillWatch(ref);

    handleSubmit() {
      try {
        require(watch.providerName, "Select a Provider");
        require(watch.amountCrypto, "Select a Bouquet");
        require(watch.bouquetName, "Select a Bouquet");
        require(watch.smartCardNo, "Please enter a smart card no");
        require(watch.amountCrypto, "Please set the amount");
      } catch (e) {
        appToastErr(context, e.toString());
      }

      pushScreen(
        context,
        withNavBar: false,
        screen: TxnSummaryPage(
          send: (pin) async {
            appToast(context, "Summary Page testing");
          },
          cryptoAmountToPay: watch.amountCrypto!,
          children: [
            simpleRow(title: "Provider", subtitle: watch.providerName),
            simpleRow(title: "Bouquet", subtitle: watch.bouquetName),
            simpleRow(title: "Smart Card No", subtitle: watch.smartCardNo),
            simpleRow(
              title: "Crypto Amount",
              subtitle: watch.amountCrypto.toString(),
            ),
            SizedBox(height: 20),
          ],
        ),
      );
    }

    return appScaffold(
      context,
      title: "Pay TV Bills",
      body: Column(
        spacing: 20,
        children: [
          TvBillsProviders(),
          watch.providerName != null ? TvBillsBouquet() : SizedBox.shrink(),
          TvBillsSmartCardNoField(),
          CryptoAmountPay(amountFiat: watch.amountFiat ?? 0),
          SizedBox(height: 10),
          btn(title: "Submit", onPressed: handleSubmit),
        ],
      ),
    );
  }
}
