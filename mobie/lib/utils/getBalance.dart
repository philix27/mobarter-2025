import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';

// Minimal ERC20 ABI
final String erc20Abi = '''
      [
        {
          "constant": true,
          "inputs": [{"name": "_owner", "type": "address"}],
          "name": "balanceOf",
          "outputs": [{"name": "balance", "type": "uint256"}],
          "type": "function"
        },
        {
          "constant": true,
          "inputs": [],
          "name": "decimals",
          "outputs": [{"name": "", "type": "uint8"}],
          "type": "function"
        }
      ]
      ''';

Future<double?> getWalletTokenBalance({
  required String walletAddress,
  required int tokenDecimal,
  String? tokenContractAddress,
}) async {
  final rpcUrl = 'https://forno.celo.org'; // Celo RPC
  final httpClient = Client();
  final ethClient = Web3Client(rpcUrl, httpClient);

  try {
    final EthereumAddress address = EthereumAddress.fromHex(walletAddress);

    if (tokenContractAddress == null || tokenContractAddress == "") {
      // Fetch CELO or native token balance
      final balance = await ethClient.getBalance(address);
      final nativeBalance = balance.getValueInUnit(EtherUnit.ether);
      print('Native Token Balance: $nativeBalance');
      return balance.getValueInUnit(EtherUnit.ether);
    } else {
      final contract = DeployedContract(
        ContractAbi.fromJson(erc20Abi, 'ERC20'),
        EthereumAddress.fromHex(tokenContractAddress),
      );

      final balanceFunction = contract.function('balanceOf');
      final decimalsFunction = contract.function('decimals');

      final result = await ethClient.call(
        contract: contract,
        function: balanceFunction,
        params: [address],
      );

      final decimalsResult = await ethClient.call(
        contract: contract,
        function: decimalsFunction,
        params: [],
      );

      // final decimal = decimalsResult[0].toString();

      final BigInt rawBalance = result.first as BigInt;
      // print('ERC20 decimalsResult: $cc');
      // print('ERC20 tokenContractAddress: $tokenContractAddress');
      print('ERC20 rawBalance: $rawBalance');

      if (rawBalance == 0) {
        return 0;
      } else {
        final BigInt decimalCount = decimalsResult.first;
        // final int decimalCount = decimalsResult.first ?? 18;

        // BigInt raw = BigInt.parse(rawBalance);
        // Decimal decimal = Decimal.fromBigInt(rawBalance);
        print('ERC20 decimal: $decimalCount');

        // final decimal2 = decimal / Decimal.fromInt(tokenDecimal);
        // final newDC = rawBalance / (10 * tokenDecimal);
        // print('ERC20 newDC: $newDC');

        // print('ERC20 Decimal2: $decimal2');
        // print('Decimal count: $decimalCount');

        final double adjustedBalance =
            rawBalance / BigInt.from(10).pow(decimalCount.toInt());
        // final double adjustedBalance =
        //     rawBalance / BigInt.from(10).pow(tokenDecimal);

        // final console = adjustedBalance.toString();
        // print('ERC20 Token Balance: $console');

        // return 0.9;
        return adjustedBalance;
      }
    }
  } catch (e) {
    print('Error fetching balance: $e');
    // return null;
    return 0.0;
  }
}
