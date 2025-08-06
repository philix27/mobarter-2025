import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/firestore/wallet.dart';
import 'package:mobarter/features/paymentToken/logic/notifier.dart';
import 'package:mobarter/features/paymentToken/logic/provider.dart';
import 'package:mobarter/features/paymentToken/model/data.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/utils/exception.dart';
import 'package:mobarter/utils/getBalance.dart';
import 'package:mobarter/widgets/widgets.dart';
import 'package:toastification/toastification.dart';

enum TokenListUseCase { paymentToken, walletPage }

class TokensList extends HookConsumerWidget {
  final walletSvc = WalletStoreService();
  final TokenListUseCase? useCase;
  final double? cryptoAmountToPay;
  TokensList({super.key, this.useCase, this.cryptoAmountToPay});

  @override
  Widget build(BuildContext context, ref) {
    final read = paymentTokenRead(ref);
    final result = useQuery$static_getTokens(Options$Query$static_getTokens());
    final resultChains = useQuery$static_getChain(
      Options$Query$static_getChain(),
    );

    final tokensList = result.result.parsedData?.static_getTokens;
    final chainsList = resultChains.result.parsedData?.static_getChains;

    if (tokensList == null || tokensList.isEmpty || chainsList == null) {
      return Center(child: Text("No data. Check your network connection"));
    }

    final tList = useCase == TokenListUseCase.paymentToken
        ? tokensList.where((el) => el.isPayable == true)
        : tokensList;

    return FutureBuilder(
      future: walletSvc.userWalletAddress(),
      builder: (builder, snap) {
        if (!snap.hasData || tList.isEmpty) {
          return SizedBox.shrink();
        }

        return ListView.builder(
          primary: true,
          shrinkWrap: true,
          itemCount: tList.length,
          itemBuilder: (BuildContext ctx, int index) {
            final item = tList.toList()[index];
            final chain = chainsList.firstWhere(
              (val) => val.chainId == item.chainId,
            );

            return tokenRow(
              context,
              item,
              snap.data!,
              chain,
              useCase,
              read,
              cryptoAmountToPay,
            );
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
  Query$static_getChain$static_getChains chain,
  TokenListUseCase? useCase,
  PaymentTokenDataNotifier read,
  double? cryptoAmountToPay,
) {
  return ListTile(
    dense: true,
    tileColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(item.symbol, style: Theme.of(context).textTheme.headlineMedium),
    subtitle: Text(chain.name, style: Theme.of(context).textTheme.bodySmall),
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

    trailing: Column(
      children: [
        FutureBuilder(
          future: getWalletTokenBalance(
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
        // Text(chain.name, style: Theme.of(context).textTheme.bodySmall),
      ],
    ),
    onTap: () async {
      if (useCase == TokenListUseCase.paymentToken) {
        try {
          require(cryptoAmountToPay, "Crypto Amount needed");

          final bal =
              await getWalletTokenBalance(
                tokenContractAddress: item.address,
                tokenDecimal: int.tryParse(item.decimals.toString()) ?? 18,
              ) ??
              0;

          if (cryptoAmountToPay! > bal) {
            appToast(
              context,
              "Insufficient Balance",
              type: ToastificationType.error,
            );
            return;
          }

          read.update(
            PaymentTokenData(
              priceUSD: item.priceUSD,
              decimals: item.decimals,
              address: item.address,
              name: item.name,
              logo: item.logoUrl,
              chain: chain.name,
            ),
          );
          Navigator.pop(context);
        } catch (e) {
          appToastErr(context, e.toString());
        }
      }
    },
  );
}

double roundUpTo3Decimals(double value) {
  return (value * 1000).floorToDouble() / 1000;
}
