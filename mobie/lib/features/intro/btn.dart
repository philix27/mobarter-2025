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
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/widgets/widgets.dart';
import 'package:toastification/toastification.dart';

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
      } catch (e) {
        appLogger.e("Login Err: $e");
        appToastErr(context, e.toString());
      }
    }

    welcome() async {
      await walletSvc.userWalletAddress();

      final user = await svc.user();

      if (user == null) {
        appToast(context, "User not found", type: ToastificationType.info);
        return;
      }

      final hasWallet = await walletSvc.doesWalletExist(user.uid);

      await getServerToken(user);

      if (!hasWallet) {
        Navigator.of(context).pushNamed("/setup-pin");
        return;
      }

      Navigator.of(context).pushNamed("/home");
    }

    int attempt = 0;
    loginWithGoogle() async {
      attempt = attempt + 1;

      final user = await svc.loginWithGoogle();

      try {
        if (user != null) {
          await getServerToken(user);

          final hasWallet = await walletSvc.doesWalletExist(user.uid);

          if (!hasWallet) {
            Navigator.of(context).pushNamed("/setup-pin");
          } else {
            await walletSvc.userWalletAddress();

            Navigator.of(context).pushNamed("/home");
          }
        } else {
          if (attempt < 2) {
            await loginWithGoogle();
            appToast(context, "Retrying...", type: ToastificationType.info);
          }
        }
      } catch (e) {
        appToastErr(context, e.toString());
      }
    }

    if (result.result.isLoading) {
      return const LoadingIndicator();
    }

    if (svc.isLoggedIn()) {
      return Btn(title: "Welcome", onPressed: welcome);
    } else {
      return Btn(title: "Sign In WIth Google", onPressed: loginWithGoogle);
      // return Column(
      //   spacing: 10,
      //   children: [
      //     Btn(
      //       title: "Login",
      //       onPressed: () {
      //         pushScreen(context, screen: SignInPage());
      //       },
      //     ),
      //   ],
      // );
    }
  }
}

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // Adjust chunk size as needed
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}
