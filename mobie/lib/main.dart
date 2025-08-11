import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "package:flutter/services.dart";
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/config/crashlytics.dart';
import 'package:mobarter/features/app/logic/provider.dart';
import 'package:mobarter/features/intro/Welcome.dart';
import 'package:mobarter/features/onboarding/SetupTxnPinPage.dart';
import 'package:mobarter/features/theme/app_theme.dart';
import 'package:mobarter/features/theme/themes_provider.dart';
import 'package:mobarter/graphql/api/Api.dart';
import 'package:mobarter/pages/HomeLayout.dart';
import 'package:mobarter/features/wallet/WalletPage.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // make navigation bar transparent
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent),
  );

  // make flutter draw behind navigation bar
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  Hive.initFlutter();
  await initHiveForFlutter();

  // LocalStore();
  HiveStore.open();
  Hive.openBox("wallet");

  await Firebase.initializeApp();

  if (!kDebugMode) {
    await initiateCrashlytics();
  }

  runApp(AppProviders());
}

class AppProviders extends StatelessWidget {
  const AppProviders({super.key});

  // ValueNotifier<GraphQLClient> client = ValueNotifier(getGqlClient());
  // This widget is the root of y our application.
  @override
  Widget build(BuildContext context) {
    return Phoenix(child: ProviderScope(child: InitiateGql()));
  }
}

class InitiateGql extends HookConsumerWidget {
  const InitiateGql({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final token = appCredentialsWatch(ref).serverToken;
    final themeState = themeWatch(ref);

    return GraphQLProvider(
      client: getGqlClientNotifier(token),
      child: ToastificationWrapper(
        child: MaterialApp(
          title: 'Mobarter',
          debugShowCheckedModeBanner: false,
          themeMode: themeState.isDarkModeEnabled
              ? ThemeMode.dark
              : ThemeMode.light,
          darkTheme: AppTheme.dark,
          theme: AppTheme.light,
          home: WelcomePage(),
          routes: {
            "/home": (context) => const HomePageLayout(),
            "/auth": (context) => const WalletPage(),
            "/interactive": (context) => const WalletPage(),
            "/setup-pin": (context) => const SetupTxnPinPage(),
            "/welcome": (context) => const WelcomePage(),
          },
        ),
      ),
    );
  }
}
