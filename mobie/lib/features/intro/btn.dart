import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql/src/core/query_result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/app/logic/provider.dart';
import 'package:mobarter/features/firestore/wallet.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/auth.gql.dart';
import 'package:mobarter/widgets/btn.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/widgets/toast.dart';

class ConnectionButton extends HookConsumerWidget {
  ConnectionButton({super.key});

  final svc = AuthService();
  final walletSvc = WalletStoreService();

  @override
  Widget build(BuildContext context, ref) {
    final result = useMutation$Auth_firebaseLogin();
    final user = svc.user()!;

    Future<void> getServerToken() async {
      final idToken = await user.getIdToken();

      final res = result.runMutation(
        Variables$Mutation$Auth_firebaseLogin(
          input: Input$Auth_FirebaseLoginInput(idToken: idToken!),
        ),
      );

      final tokenData = await res.networkResult;

      final serverToken = tokenData!.parsedData?.auth_firebaseLogin.token;
      appCredentialsRead(ref).updateServerToken(serverToken!);
    }

    if (result.result.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (svc.isLoggedIn()) {
      return btn(
        title: "Welcome",
        onPressed: () async {
          await walletSvc.userWalletAddress();

          await getServerToken();

          Navigator.of(context).pushNamed("/home");
        },
      );
    } else {
      return btn(
        title: "Sign In WIth Google",
        onPressed: () async {
          final loggedIn = await svc.loginWithGoogle();

          if (loggedIn) {
            final hasWallet = await walletSvc.doesWalletExist(user.uid);

            if (!hasWallet) {
              Navigator.of(context).pushNamed("/setup-pin");
            } else {
              await walletSvc.userWalletAddress();

              await getServerToken();

              Navigator.of(context).pushNamed("/home");
            }
          } else {
            apptToast(context, "Login Failed");
          }
        },
      );
    }
  }
}
