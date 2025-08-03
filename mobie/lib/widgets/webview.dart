import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/app/logic/provider.dart';
import 'package:mobarter/features/auth/auth_service.dart';
import 'package:mobarter/features/firestore/wallet.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/features/theme/themes_provider.dart';
import 'package:mobarter/widgets/bottomSheet.dart';
import 'package:mobarter/widgets/loading.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class AppWebView extends ConsumerWidget {
  final String url;
  final String title;
  final String info;

  AppWebView({
    super.key,
    required this.url,
    required this.title,
    required this.info,
  });
  final authService = AuthService();
  final walletStore = WalletStoreService();

  @override
  Widget build(BuildContext context, ref) {
    final themeState = themeWatch(ref);

    getParams() async {
      final user = authService.user();
      final idToken = await user?.getIdToken();
      final uid = user?.uid;
      final email = user?.email;
      final displayName = user?.displayName;
      final wallet = await walletStore.userWalletAddress();
      final cred = appCredentialsWatch(ref);
      final server = cred.serverToken;

      final fullString =
          "${this.url}?wallet=${wallet}&displayName=${displayName}&email=${email}&uid=${uid}&serverToken=${server}&idToken=${idToken}&${server}&isDark=${themeState.isDarkModeEnabled}";

      return fullString;
    }

    return FutureBuilder(
      future: getParams(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const LoadingIndicator();
        }

        return _AppWebView(url: snapshot.data ?? url, title: title, info: info);
      },
    );
  }
}

class _AppWebView extends StatefulWidget {
  final String url;
  final String title;
  final String info;
  const _AppWebView({
    super.key,
    required this.url,
    required this.title,
    required this.info,
  });

  @override
  State<_AppWebView> createState() =>
      _AppWebViewState(url: url, title: title, info: info);
}

class _AppWebViewState extends State<_AppWebView> {
  _AppWebViewState({
    required this.url,
    required this.info,
    required this.title,
  });
  late final WebViewController _controller;
  final String url;
  final String title;
  final String info;

  @override
  void initState() {
    super.initState();

    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            debugPrint('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (String url) {
            debugPrint('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('''
Page resource error:
  code: ${error.errorCode}
  description: ${error.description}
  errorType: ${error.errorType}
  isForMainFrame: ${error.isForMainFrame}
          ''');
          },
          onNavigationRequest: (NavigationRequest request) {
            debugPrint('allowing navigation to ${request.url}');
            return NavigationDecision.navigate;
          },
          onHttpError: (HttpResponseError error) {
            debugPrint('Error occurred on page: ${error.response?.statusCode}');
          },

          // onHttpAuthRequest: (HttpAuthRequest request) {
          //   openDialog(request);
          // },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(message.message)));
        },
      )
      ..loadRequest(Uri.parse(this.url));

    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }

    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 35,
        toolbarOpacity: 0.7,
        title: Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              btmSheet(
                ctx: context,
                w: ShowDescription(desc: info),
                h: 0.4,
              );
            },
            padding: const EdgeInsets.only(right: 20.0),
            icon: Icon(Icons.info, color: colorMuted, size: 24.0),
          ),
        ],
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}

class ShowDescription extends StatelessWidget {
  const ShowDescription({super.key, required this.desc});
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        desc,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
      ),
    );
  }
}
