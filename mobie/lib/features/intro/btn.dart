import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/app/logic/provider.dart';
import 'package:mobarter/features/firestore/wallet.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/auth.gql.dart';
import 'package:mobarter/utils/logger.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/widgets/toast.dart';

class ConnectionButton extends ConsumerWidget {
  const ConnectionButton({super.key});

  @override
  Widget build(BuildContext context, ref) {
    updateServerToken(String serverToken) {
      appCredentialsRead(ref).updateServerToken(serverToken);
    }

    return _ConnectionButton(updateServerToken: updateServerToken);
  }
}

class _ConnectionButton extends HookWidget {
  _ConnectionButton({super.key, required this.updateServerToken});
  Function(String) updateServerToken;

  final svc = AuthService();
  final walletSvc = WalletStoreService();

  @override
  Widget build(BuildContext context) {
    final result = useMutation$Auth_firebaseLogin();

    Future<void> getServerToken(User user) async {
      try {
        final idToken = await user.getIdToken();
        printWrapped("IdToken $idToken");

        final res = result.runMutation(
          Variables$Mutation$Auth_firebaseLogin(
            input: Input$Auth_FirebaseLoginInput(idToken: idToken!),
          ),
        );

        final tokenData = await res.networkResult;

        appLogger.e("Login tokenData: $tokenData");

        final serverToken = tokenData!.parsedData?.auth_firebaseLogin.token;
        updateServerToken(serverToken!);

        Navigator.of(context).pushNamed("/home");
      } catch (e) {
        appLogger.e("Login Err: $e");
        apptToast(context, "Failed to get server token: $e");
      }
    }

    welcome() async {
      await walletSvc.userWalletAddress();

      final user = await svc.user();

      if (user == null) {
        apptToast(context, "User not found");
        return;
      }

      await getServerToken(user);
    }

    int attempt = 0;
    loginWithGoogle() async {
      attempt = attempt + 1;

      final user = await svc.loginWithGoogle();

      if (user != null) {
        final hasWallet = await walletSvc.doesWalletExist(user.uid);

        if (!hasWallet) {
          Navigator.of(context).pushNamed("/setup-pin");
        } else {
          await walletSvc.userWalletAddress();

          await getServerToken(user);
        }
      } else {
        apptToast(context, "Login Failed");
        if (attempt < 2) {
          await loginWithGoogle();
          apptToast(context, "Sorry, could not login your google account");
        }
      }
    }

    if (result.result.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (svc.isLoggedIn()) {
      return btn(title: "Welcome", onPressed: welcome);
    } else {
      return btn(title: "Sign In WIth Google", onPressed: loginWithGoogle);
    }
  }
}

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // Adjust chunk size as needed
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}
