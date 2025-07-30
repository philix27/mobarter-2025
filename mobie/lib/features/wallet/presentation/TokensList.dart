import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/features/firestore/wallet.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/utils/getBalance.dart';
import 'package:mobarter/widgets/shimmer.dart';

class TokensList extends HookWidget {
  TokensList({super.key});
  final walletSvc = WalletStoreService();
  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_getTokens(Options$Query$static_getTokens());
    final tokensList = result.result.parsedData?.static_getTokens;

    if (tokensList == null || tokensList.isEmpty) {
      return Center(child: Text("No data. Check your network connection"));
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
            return tokenRow(context, item, snap.data!);
          },
        );
      },
    );
  }
}

Widget tokenRow(
  BuildContext context,
  Query$static_getTokens$static_getTokens item,
  String wallet,
) {
  return ListTile(
    dense: true,
    tileColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(item.symbol, style: Theme.of(context).textTheme.headlineMedium),
    subtitle: FutureBuilder(
      future: getWalletTokenBalance(
        walletAddress: wallet,
        tokenContractAddress: item.address,
        tokenDecimal: int.tryParse(item.decimals.toString()) ?? 18,
      ),
      builder: (ctx, snap) {
        if (snap.data == null) {
          return Text("0", style: Theme.of(context).textTheme.bodySmall);
        }
        return Text(
          snap.data.toString(),
          style: Theme.of(context).textTheme.bodySmall,
        );
      },
    ),
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(
        imageUrl: item.logoUrl,
        placeholder: (context, url) => roundShimmerImg(context),
        errorWidget: (context, url, error) => SizedBox.shrink(), 
        width: 30,
        height: 30,
        fit: BoxFit.cover,
      ),
    ),

    trailing: FutureBuilder(
      future: getWalletTokenBalance(
        walletAddress: wallet,
        tokenContractAddress: item.address,
        tokenDecimal: int.tryParse(item.decimals.toString()) ?? 18,
      ),
      builder: (ctx, snap) {
        if (snap.data == null) {
          return Text("0", style: Theme.of(context).textTheme.bodyMedium);
        }

        // final tokenCount = double.parse(snap.data!.toStringAsFixed(3));
        // final bal = roundUpTo3Decimals(snap.data!) * item.priceUSD;
        final bal = snap.data! * item.priceUSD;
        // final displayBal = int.tryParse(bal.toString()) ?? 333;
        final prev = bal.toStringAsFixed(3).toString();
        final displayBal = prev;
        return Text(
          "\$$displayBal",
          style: Theme.of(context).textTheme.bodyMedium,
        );
      },
    ),
  );
}

double roundUpTo3Decimals(double value) {
  return (value * 1000).floorToDouble() / 1000;
}
