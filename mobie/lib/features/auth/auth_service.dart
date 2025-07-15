import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final GoogleSignIn signIn = GoogleSignIn();

  Future<bool> loginWithGoogle() async {
    try {
      final account = await signIn.signIn();

      final userAuth = await account!.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: userAuth.idToken,
        accessToken: userAuth.accessToken,
      );

      final user = await FirebaseAuth.instance.signInWithCredential(credential);

      final userExist = FirebaseAuth.instance.currentUser != null;

      print("User credentials: $user");
      return userExist;
    } catch (e) {
      print("Error: could not login $e");
      return false;
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
    return FirebaseAuth.instance.currentUser;
  }

  Future signOut() async {
    await signIn.signOut();
    await _auth.signOut();
  }
}
