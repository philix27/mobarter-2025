import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobarter/features/updates/models/build_version.dart';
import 'package:mobarter/features/updates/models/status.dart';
import 'package:mobarter/graphql/api/Api.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_repository.g.dart';

final appInfoQuery = """query static_appInfo {
  static_appInfo {
    androidAppUrl
    iosAppUrl
    minBuild
    deployedBuild
  }
}""";

class UpdateRepository {
  Future<int> deviceBuildNum() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return int.parse(packageInfo.buildNumber);
  }

  Future<BuildVersion?> buildVersionInfo() async {
    // todo: make api request to get build version info
    // final result = useQuery$static_appInfo(Options$Query$static_appInfo());
    // final info = result.result.parsedData?.static_appInfo;

    try {
      final client = getGqlClientNotifier(null).value;

      QueryResult<Query$static_appInfo> result = await client.query(
        Options$Query$static_appInfo(),
      );
      //  QueryOptions(
      //     document: gql(appInfoQuery),
      //     // fetchPolicy: FetchPolicy.cacheFirst,
      //   ),
      final info = result.parsedData?.static_appInfo;

      final open = info!.minBuild.round();

      print("Info minBuild $open");
      return BuildVersion(
        minBuild: info.minBuild.round(),
        deployedBuild: info.deployedBuild.round(),
      );
    } catch (e) {
      return null;
    }
    // return Future.value(BuildVersion(minBuild: 2, deployedBuild: 2));
  }

  Future<UpdateStatus> getUpdateStatus() async {
    BuildVersion? buildVersion = await buildVersionInfo();

    if (buildVersion == null) {
      return UpdateStatus.none;
    }

    int minBuild = buildVersion.minBuild;
    int deployedBuild = buildVersion.deployedBuild;
    int deviceBuild = await deviceBuildNum();

    // the minBuild should NEVER be higher than the deployedBuild
    if (minBuild > deployedBuild) {
      minBuild = deployedBuild;
    }

    // if deviceBuild is less than minBuild REQUIRE update
    if (deviceBuild < minBuild) {
      return UpdateStatus.mandatory;
    }

    // if deviceBuild is less than deployedBuild we have an optional update
    if (deviceBuild < deployedBuild) {
      return UpdateStatus.optional;
    }

    return UpdateStatus.none;
    // return Future.value(BuildVersion(miniBuild: 2, deployedBuild: 2));
  }

  Future<UpdateStatus> checktUpdateStatus(BuildVersion? buildVersion) async {
    if (buildVersion == null) {
      return UpdateStatus.none;
    }

    int minBuild = buildVersion.minBuild;
    int deployedBuild = buildVersion.deployedBuild;
    int deviceBuild = await deviceBuildNum();

    // the minBuild should NEVER be higher than the deployedBuild
    if (minBuild > deployedBuild) {
      minBuild = deployedBuild;
    }

    // if deviceBuild is less than minBuild REQUIRE update
    if (deviceBuild < minBuild) {
      return UpdateStatus.mandatory;
    }

    // if deviceBuild is less than deployedBuild we have an optional update
    if (deviceBuild < deployedBuild) {
      return UpdateStatus.optional;
    }

    return UpdateStatus.none;
    // return Future.value(BuildVersion(miniBuild: 2, deployedBuild: 2));
  }
}

@Riverpod(keepAlive: true)
UpdateRepository updateRepository(UpdateRepositoryRef ref) {
  return UpdateRepository();
}

@Riverpod(keepAlive: true)
Future<int> deviceBuild(DeviceBuildRef ref) async {
  final updateRepository = ref.watch(updateRepositoryProvider);
  return await updateRepository.deviceBuildNum();
}

@Riverpod(keepAlive: true)
Future<UpdateStatus> deviceUpdateStatus(DeviceUpdateStatusRef ref) async {
  final updatesRepository = ref.watch(updateRepositoryProvider);
  return await updatesRepository.getUpdateStatus();
}
