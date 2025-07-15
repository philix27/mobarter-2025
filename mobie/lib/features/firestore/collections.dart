import 'package:cloud_firestore/cloud_firestore.dart';

class CollectionsService {
  final CollectionReference wallet = FirebaseFirestore.instance.collection(
    "wallets",
  );
  final CollectionReference account = FirebaseFirestore.instance.collection(
    "account",
  );
  final CollectionReference secret_questions = FirebaseFirestore.instance
      .collection("secret_questions");
}
