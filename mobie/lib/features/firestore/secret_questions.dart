import 'package:mobarter/features/firestore/collections.dart';
import 'package:mobarter/utils/logger.dart';

class SecretQuestionsService {
  final collection = CollectionsService().secret_questions;

  Future<List<String>?> getQuestions() async {
    final doc = await collection.doc("questions").get();

    if (doc.exists) {
      final data = doc.data() as List<String>;
      appLogger.i("Secret questions documents found");
      return data;
    }

    return null;
  }
}
