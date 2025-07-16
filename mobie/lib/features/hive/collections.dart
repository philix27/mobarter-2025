import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String boxWallet = "wallet";
const String boxTheme = "theme";

class LocalStore {
  late BoxCollection _collection;

  // final wallet = WalletLocalStore();

  LocalStore() {
    createCollections();
  }

  createCollections() async {
    // Create a box collection
    await BoxCollection.open(
      'localstore', // Name of your database
      {boxWallet, boxTheme}, // Names of your boxes
      path: './', // Path where to store your boxes
      // key: HiveCip her(), // Key to encrypt your boxes
    );

    openBoxes();
  }

  openBoxes() {
    _collection.openBox<Map>(boxWallet);
    _collection.openBox<Map>(boxTheme);
    Hive.openBox(boxWallet);
  }

  Future<String?> getWalletAddress() async {
    final box = await Hive.openBox(boxWallet);
    return box.get("address");
  }

  Future<void> putWalletAddress(String address) async {
    final box = await Hive.openBox(boxWallet);

    await box.put("address", address);
  }
}

// class WalletLocalStore {
//   //  Hive.openBox(boxWallet);
//   final _box = Hive.openBox(boxWallet);

//   WalletLocalStore() {
//     Hive.openBox(boxWallet);
//   }

//   String? getWalletAddress() {
//     return _box.get("address");
//   }

//   Future<void> putWalletAddress(String address) async {
//     await _box.put("address", address);
//   }
// }
