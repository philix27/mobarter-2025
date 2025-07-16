import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/features/firestore/wallet.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/utils/getBalance.dart';
import 'package:intl/intl.dart';

class TotalBalance extends HookWidget {
  TotalBalance({super.key});
  final authSvc = AuthService();
  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_getTokens(Options$Query$static_getTokens());
    final tokensList = result.result.parsedData?.static_getTokens;

    if (tokensList == null || tokensList.isEmpty) {
      return Text("No data yet");
    }

    return FutureBuilder(
      future: getTotalPriceAsync(tokensList),
      builder: (ctx, snap) {
        if (snap.data == null) {
          return Text(
            "...",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          );
        }
        double ngnPrice = tokensList
            .where((i) => i.symbol.contains("USD"))
            .first
            .priceNGN;

        final total = formatCurrency(snap.data!, symbol: "\$");
        final totalNgn = snap.data! * ngnPrice;
        // final displayNgn = totalNgn.toStringAsFixed(2);
        final displayNgn = formatCurrency(totalNgn);
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$total USD",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8),
            Text(
              "~$displayNgn",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        );
      },
    );
  }
}

Future<double> getTotalPriceAsync(
  List<Query$static_getTokens$static_getTokens>? tokens,
) async {
  final walletSvc = WalletStoreService();
  final address = await walletSvc.userWalletAddress();

  final futures = tokens?.map((item) async {
    final price = await getWalletTokenBalance(
      walletAddress: address!,
      tokenContractAddress: item.address,
      tokenDecimal: int.tryParse(item.decimals.toString()) ?? 18,
    );
    if (price == null) return 0.0;

    return price * item.priceUSD;
  });

  final amounts = await Future.wait(futures!);
  return amounts.reduce((a, b) => a + b); // sum them up
}

String formatCurrency(
  double amount, {
  String symbol = '₦',
  String locale = 'en_NG',
}) {
  final formatter = NumberFormat.currency(
    locale: locale,
    symbol: symbol,
    decimalDigits: 2,
  );
  return formatter.format(amount);
}
