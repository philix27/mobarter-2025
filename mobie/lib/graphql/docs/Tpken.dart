import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/graphql/docs/Static.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/utils/getBalance.dart';

class TokensListWidget extends StatelessWidget {
  TokensListWidget({super.key});

  final _service = ApiStaticService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _service.getTokens(),
      builder: (BuildContext ctx, AsyncSnapshot<List> snapshot) {
        if (snapshot.error != null) {
          return Text("Err-");
        }

        final tokensList = snapshot.data;
        print(tokensList);
        // return Column();
        return ListView.builder(
          primary: true,
          shrinkWrap: true,
          itemCount: tokensList?.length ?? 1,
          itemBuilder: (BuildContext ctx, int index) {
            //  Text(tokensList![index]["name"] ?? "No name");
            final item = tokensList![index];
            // return Text("data");
            return tokenRow(
              title: item["symbol"],
              subtitle: item["name"],
              trailText: "...",
              logoUrl: item["logoUrl"],
              tokenContractAddress: item["address"],
            );
          },
        );
      },
    );
  }
}

class TokenHookWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_getTokens(Options$Query$static_getTokens());
    final extract = result.result.parsedData?.static_getTokens[0];

    return Text(extract?.name ?? '...loading');
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



// options: QueryOptions(document: gql(static_getTokens)),
    // // options: Options$Query$static_getTokens(),
    // builder: (result, {fetchMore, refetch}) {
    //   if (result.hasException) {
    //     print("tokenList-error ${result.exception!.graphqlErrors[0]}");
    //     return Text("Err");
    //   }
    //   if (result.isLoading) {
    //     print("tokenList-loading");
    //     return CircularProgressIndicator();
    //   }

    //   final tokensList = result.parsedData?.static_getTokens;
    //   if (kDebugMode) {
    //     print("tokenList-89");
    //     print(tokensList);
    //   }
    //   return ListView.builder(
    //     primary: true,
    //     itemCount: tokensList?.length,
    //     itemBuilder: (BuildContext ctx, int index) {
    //       return Text(tokensList![index].name);
    //     },
    //   );
    // },
    // );