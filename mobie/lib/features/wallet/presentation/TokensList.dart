import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/features/firestore/wallet.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/utils/getBalance.dart';

class TokensList extends HookWidget {
  TokensList({super.key});
  final walletSvc = WalletStoreService();
  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_getTokens(Options$Query$static_getTokens());
    final tokensList = result.result.parsedData?.static_getTokens;

    if (tokensList == null || tokensList.isEmpty) {
      return Text("No data yet");
    }
    return FutureBuilder(
      future: walletSvc.userWalletAddress(),
      builder: (builder, snap) {
        if (!snap.hasData || tokensList.isEmpty) {
          return SizedBox.shrink();
        }

        return ListView.builder(
          primary: true,
          shrinkWrap: true,
          itemCount: tokensList.length,
          itemBuilder: (BuildContext ctx, int index) {
            final item = tokensList[index];
            return tokenRow(item, snap.data!);
          },
        );
      },
    );
  }
}

Widget tokenRow(Query$static_getTokens$static_getTokens item, String wallet) {
  return ListTile(
    title: Text(
      item.symbol,
      style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w500),
    ),

    subtitle: FutureBuilder(
      future: getWalletTokenBalance(
        walletAddress: wallet,
        tokenContractAddress: item.address,
        tokenDecimal: int.tryParse(item.decimals.toString()) ?? 18,
      ),
      builder: (ctx, snap) {
        if (snap.data == null) {
          return Text(
            "0",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          );
        }
        return Text(
          snap.data.toString(),
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        );
      },
    ),
    leading: CachedNetworkImage(
      imageUrl: item.logoUrl,
      placeholder: (context, url) => CircularProgressIndicator(),
      width: 30,
      height: 30,
      fit: BoxFit.cover,
    ),

    trailing: FutureBuilder(
      future: getWalletTokenBalance(
        walletAddress: wallet,
        tokenContractAddress: item.address,
        tokenDecimal: int.tryParse(item.decimals.toString()) ?? 18,
      ),
      builder: (ctx, snap) {
        if (snap.data == null) {
          return Text(
            "0",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          );
        }

        // final tokenCount = double.parse(snap.data!.toStringAsFixed(3));
        // final bal = roundUpTo3Decimals(snap.data!) * item.priceUSD;
        final bal = snap.data! * item.priceUSD;
        // final displayBal = int.tryParse(bal.toString()) ?? 333;
        final prev = bal.toStringAsFixed(3).toString();
        final displayBal = prev;
        return Text(
          "\$$displayBal",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        );
        // return Column(
        //   children: [
        //     // Text(
        //     //   snap.data.toString(),
        //     //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        //     // ),
        //     Text(
        //       "\$$bal",
        //       style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        //     ),
        //   ],
        // );
      },
    ),
  );
}

double roundUpTo3Decimals(double value) {
  return (value * 1000).floorToDouble() / 1000;
}
