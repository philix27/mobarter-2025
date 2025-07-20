
class AppCredentials {
  final String? serverToken;

  AppCredentials({required this.serverToken});

  AppCredentials copyWith({String? serverToken}) {
    return AppCredentials(serverToken: serverToken ?? this.serverToken);
  }
}
