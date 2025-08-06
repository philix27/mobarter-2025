import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/paymentToken/logic/provider.dart';
import 'package:mobarter/features/wallet/presentation/TokensList.dart';
import 'package:mobarter/utils/getBalance.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/listTile.dart';

class SelectPaymentToken extends ConsumerWidget {
  final double cryptoAmountToPay;
  const SelectPaymentToken({super.key, required this.cryptoAmountToPay});

  @override
  Widget build(BuildContext context, ref) {
    final watch = paymentTokenWatch(ref);

    final isNull = watch.name == null;
    return listTile(
      context,
      title: isNull ? "Select Currency For Payment" : watch.name!,
      subtitle: isNull ? null : watch.chain!,
      imgUrl: watch.logo,
      trailing: isNull
          ? null
          : FutureBuilder(
              future: getWalletTokenBalance(
                tokenContractAddress: watch.address,
                tokenDecimal: int.tryParse(watch.decimals.toString()) ?? 18,
              ),
              builder: (ctx, snap) {
                if (snap.data == null) {
                  return Text(
                    "0",
                    style: Theme.of(context).textTheme.bodyMedium,
                  );
                }

                final bal = snap.data! * watch.priceUSD!;
                final prev = bal.toStringAsFixed(3).toString();
                final displayBal = prev;
                return Text(
                  "\$$displayBal",
                  style: Theme.of(context).textTheme.bodyMedium,
                );
              },
            ),
      onTap: () {
        btmSheet(
          h: 0.7,
          ctx: context,
          w: TokensList(
            useCase: TokenListUseCase.paymentToken,
            cryptoAmountToPay: cryptoAmountToPay,
          ),
        );
      },
    );
  }
}
