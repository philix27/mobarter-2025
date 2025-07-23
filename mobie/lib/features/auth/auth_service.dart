import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobarter/utils/logger.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final GoogleSignIn signIn = GoogleSignIn();

  Future<User?> loginWithGoogle() async {
    try {
      final account = await signIn.signIn();

      final userAuth = await account!.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: userAuth.idToken,
        accessToken: userAuth.accessToken,
      );

      final data = await FirebaseAuth.instance.signInWithCredential(credential);

      // final userExist = FirebaseAuth.instance.currentUser != null;

      return data.user;
    } catch (e) {
      appLogger.e("Could not login $e");
      return null;
    }
  }

  bool isLoggedIn() {
    try {
      final userExist = FirebaseAuth.instance.currentUser != null;

      return userExist;
    } catch (e) {
      return false;
    }
  }

  User? user() {
    var user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return null;
    }
    return user;
  }

  Future signOut() async {
    await signIn.signOut();
    await _auth.signOut();
  }
}
