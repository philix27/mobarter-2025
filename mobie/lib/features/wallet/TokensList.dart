import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/utils/getBalance.dart';

class TokensList extends HookWidget {
  const TokensList({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_getTokens(Options$Query$static_getTokens());
    final tokensList = result.result.parsedData?.static_getTokens;

    if (result.result.hasException) {
      print("Flutter Hook exceptio n");
    }

    if (result.result.data != null) {
      print("Flutter Hook Success");
    }
    // return Text(extract?.logoUrl ?? '...loading');
    return ListView.builder(
      primary: true,
      shrinkWrap: true,
      itemCount: tokensList?.length ?? 1,
      itemBuilder: (BuildContext ctx, int index) {
        //  Text(tokensList![index]["name"] ?? "No name");
        final item = tokensList![index];
        // return Text("data");
        return tokenRow(
          title: item.symbol,
          subtitle: item.name,
          trailText: "...",
          logoUrl: item.logoUrl,
          tokenContractAddress: item.address,
        );
      },
    );
  }
}

Widget tokenRow({
  required String title,
  required String subtitle,
  required String trailText,
  required String logoUrl,
  String? tokenContractAddress,
}) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w500),
    ),
    subtitle: Text(
      subtitle,
      style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
    ),
    leading: CachedNetworkImage(
      imageUrl: logoUrl,
      placeholder: (context, url) => CircularProgressIndicator(),
      width: 30,
      height: 30,
      fit: BoxFit.cover,
    ),

    trailing: FutureBuilder(
      future: getWalletTokenBalance(
        walletAddress: "0x20F50b8832f87104853df3FdDA47Dd464f885a49",
        tokenContractAddress: tokenContractAddress,
      ),
      builder: (ctx, snap) {
        return Text(
          snap.data.toString() ?? trailText,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        );
      },
    ),
  );
}
