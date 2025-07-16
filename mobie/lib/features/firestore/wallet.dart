import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobarter/features/auth/data/wallet.dart';
import 'package:mobarter/features/firestore/collections.dart';
import 'package:mobarter/utils/logger.dart';

class WalletStoreService {
  final _collection = CollectionsService().wallet;

  Future<void> createUserDocIfNotExists(
    String userId,
    WalletModel userData,
  ) async {
    final userDocRef = _collection.doc(userId);

    await FirebaseFirestore.instance.runTransaction((transaction) async {
      final snapshot = await transaction.get(userDocRef);

      if (!snapshot.exists) {
        transaction.set(userDocRef, userData.toMap());

        appLogger.i("User document created for $userId");
      } else {
        appLogger.e("User document already exists for $userId");
        throw "User already has a pin";
      }
    });
  }

  Future<WalletModel?> getUserWallet(String userId) async {
    try {
      DocumentSnapshot doc = await _collection.doc(userId).get();

      if (doc.exists) {
        final data = doc.data() as Map<String, dynamic>;
        return WalletModel.fromMap(data);
      }
      appLogger.d("No document found for ID: $userId");
      return null;
    } catch (e) {
      appLogger.e("Error getting document: $e");
      return null;
    }
  }

  Future<bool> doesWalletExist(String userId) async {
    DocumentSnapshot doc = await _collection.doc(userId).get();
    if (doc.exists) {
      return true;
    }
    return false;
  }
}
