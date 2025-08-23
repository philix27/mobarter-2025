import 'package:mobarter/features/bank_account/logic/model.dart';

class OrderBuy {
  final double? amountFiat;
  final double? amountCrypto;
  final BankAccountModel? bankAccount;

  OrderBuy({
    required this.amountCrypto,
    required this.amountFiat,
    required this.bankAccount,
  });

  OrderBuy copyWith({
    double? amountFiat,
    double? amountCrypto,
    BankAccountModel? bankAccount,
  }) {
    return OrderBuy(
      amountCrypto: amountCrypto ?? this.amountCrypto,
      amountFiat: amountFiat ?? this.amountFiat,
      bankAccount: bankAccount ?? this.bankAccount,
    );
  }
}
