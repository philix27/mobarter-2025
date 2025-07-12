import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_repository.g.dart';

class UpdateRepository {
  Future<int> deviceBuildNum() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return int.parse(packageInfo.buildNumber);
  }
}

 @Riverpod(keepAlive: true)
UpdateRepository updateRepository(UpdateRepositoryRef ref) {
  return UpdateRepository();
}
