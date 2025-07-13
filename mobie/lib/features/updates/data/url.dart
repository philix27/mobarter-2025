import 'dart:io';

String? get storeUrl {
  if (Platform.isAndroid) {
    return "https://play.google.com/store/apps/details?id=com.onemanstartup.roads";
  }
  if (Platform.isIOS) {
    return "https://apps.apple.com/app/id6443961864";
  }
  return null;
}