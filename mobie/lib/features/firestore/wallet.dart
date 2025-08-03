import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/features/auth/data/wallet.dart';
import 'package:mobarter/features/firestore/collections.dart';
import 'package:mobarter/utils/logger.dart';

class WalletStoreService {
  final _collection = CollectionsService().wallet;
  final authSvc = AuthService();

  Future<WalletModel?> getUserWallet(String userId) async {
    final user = authSvc.user();
    try {
      DocumentSnapshot doc = await _collection.doc(user!.uid).get();

      if (doc.exists) {
        final data = doc.data() as Map<String, dynamic>;
        final model = WalletModel.fromMap(data);
        // localStore.putWalletAddress(model.address);
        return model;
      }
      appLogger.d("No document found for ID: $userId");
      return null;
    } catch (e) {
      appLogger.e("Error getting document: $e");
      return null;
    }
  } 

  Future<String?> userWalletAddress() async {
    final user = authSvc.user();
    final userId = user!.uid;
    try {
      DocumentSnapshot doc = await _collection.doc(userId).get();

      if (doc.exists) {
        final data = doc.data() as Map<String, dynamic>;
        final model = WalletModel.fromMap(data);
        // localStore.putWalletAddress(model.address);
        return model.address;
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
