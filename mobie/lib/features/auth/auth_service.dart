import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobarter/utils/logger.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final GoogleSignIn signIn = GoogleSignIn();

  Stream<User?> get authStateChanges => _auth.authStateChanges();
  User? _currentUser;

  AuthService() {
    _currentUser = _auth.currentUser;
  }

  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> createAccountWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> updateUsername({required String username}) async {
    return await _currentUser?.updateDisplayName(username);
  }

  Future<void> resetPassword({required String email}) async {
    return await _auth.sendPasswordResetEmail(email: email);
  }

  Future<void> deleteAccount({
    required String email,
    required String password,
  }) async {
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: password,
    );

    await _currentUser?.reauthenticateWithCredential(credential);
    await _currentUser?.delete();
    await _auth.signOut();
  }

  Future<void> updatePassword({
    required String email,
    required String currentPassword,
    required String newPassword,
  }) async {
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: currentPassword,
    );

    await _currentUser?.reauthenticateWithCredential(credential);
    await _currentUser?.updatePassword(newPassword);
  }

  Future<User?> loginWithGoogle() async {
    try {
      final account = await signIn.signIn();

      final userAuth = await account!.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: userAuth.idToken,
        accessToken: userAuth.accessToken,
      );

      final data = await FirebaseAuth.instance.signInWithCredential(credential);

      // final userExist = FirebaseAuth.instance.user != null;

      return data.user;
    } catch (e) {
      appLogger.e("Could not login $e");
      return null;
    }
  }

  User? user() {
    return FirebaseAuth.instance.currentUser;
  }

  bool isLoggedIn() {
    try {
      final userExist = FirebaseAuth.instance.currentUser != null;

      return userExist;
    } catch (e) {
      return false;
    }
  }

  Future signOut() async {
    await signIn.signOut();
    await _auth.signOut();
  }
}
