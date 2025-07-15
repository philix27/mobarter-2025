import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobarter/features/firestore/collections.dart';
import 'package:mobarter/features/auth/data/wallet';
import 'package:mobarter/utils/logger.dart';

class WalletStoreService {
  final collection = CollectionsService().wallet;

  Future<void> createUserDocIfNotExists(
    String userId,
    Map<String, dynamic> userData,
  ) async {
    final userDocRef = collection.doc(userId);

    await FirebaseFirestore.instance.runTransaction((transaction) async {
      final snapshot = await transaction.get(userDocRef);

      if (!snapshot.exists) {
        final doc = WalletModel(
          address: userData["address"],
          ecrypted_private_key: userData["ecrypted_private_key"],
          public_key: userData["public_key"],
          secret_answer_hash: userData["secret_answer_hash"],
          txn_pin_hash: userData["txn_pin_hash"],
        ).toMap();

        transaction.set(userDocRef, doc);

        appLogger.i("User document created for $userId");
      } else {
        appLogger.e("User document already exists for $userId");
      }
    });
  }

  Future<WalletModel?> getUserWallet(String userId) async {
    try {
      DocumentSnapshot doc =
          await collection // your collection name
              .doc(userId) // the known document ID
              .get();

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
}
