import 'package:mobarter/features/bank_account/logic/bank_account_model.dart';

class OrderSell {
  final double? amountFiat;
  final double? amountCrypto;
  final BankAccountModel? bankAccount;

  OrderSell({
    required this.amountCrypto,
    required this.amountFiat,
    required this.bankAccount,
  });

  OrderSell copyWith({
    double? amountFiat,
    double? amountCrypto,
    BankAccountModel? bankAccount,
  }) {
    return OrderSell(
      amountCrypto: amountCrypto ?? this.amountCrypto,
      amountFiat: amountFiat ?? this.amountFiat,
      bankAccount: bankAccount ?? this.bankAccount,
    );
  }
}
