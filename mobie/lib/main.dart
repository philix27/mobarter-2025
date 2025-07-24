import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import "package:flutter/services.dart";
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobarter/config/crashlytics.dart';
import 'package:mobarter/features/app/logic/provider.dart';
import 'package:mobarter/features/intro/Welcome.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/features/onboarding/SetupTxnPinPage.dart';
import 'package:mobarter/graphql/api/Api.dart';
import 'package:mobarter/pages/HomeLayout.dart';
import 'package:mobarter/pages/WalletPage.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  await initiateCrashlytics();

  runApp(AppProviders());
}

class AppProviders extends StatelessWidget {
  AppProviders({super.key});

  // ValueNotifier<GraphQLClient> client = ValueNotifier(getGqlClient());
  // This widget is the root of y our application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: InitiateGql());
  }
}

class InitiateGql extends ConsumerWidget {
  const InitiateGql({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final token = appCredentialsWatch(ref).serverToken;

    return GraphQLProvider(
      client: getGqlClientNotifier(token),
      child: ToastificationWrapper(
        child: OKToast(
          textStyle: const TextStyle(fontSize: 19.0, color: Colors.white),
          backgroundColor: Colors.black,
          animationCurve: Curves.easeIn,
          animationBuilder: OffsetAnimationBuilder(),
          animationDuration: const Duration(milliseconds: 200),
          duration: const Duration(seconds: 5),
          child: MaterialApp(
            title: 'Mobarter',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: colorPrimary),
            ),
            themeMode: ThemeMode.system,
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
      ),
    );
  }
}
