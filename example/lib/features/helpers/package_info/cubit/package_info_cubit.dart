import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core/src/helper/package_info_helper.dart';
import 'package:masterfabric_core_example/features/helpers/package_info/cubit/package_info_state.dart';

/// Package Info Cubit
class PackageInfoCubit extends BaseViewModelCubit<PackageInfoState> {
  PackageInfoCubit() : super(const PackageInfoState.initial());

  Future<void> loadPackageInfo() async {
    stateChanger(const PackageInfoState.loading());

    try {
      final packageInfo = PackageInfoHelper.instance;

      final appName = await packageInfo.getPackageAppName();
      final packageName = await packageInfo.getAppPackageName();
      final version = await packageInfo.getPackageVersion();
      final buildNumber = await packageInfo.getPackageBuildNumber();
      final versionAndBuild = await packageInfo.getPackageVersionAndBuildNumber();

      stateChanger(PackageInfoState.loaded(
        appName: appName,
        packageName: packageName,
        version: version,
        buildNumber: buildNumber,
        versionAndBuild: versionAndBuild,
      ));
    } catch (e) {
      stateChanger(PackageInfoState.error(
        errorMessage: e.toString(),
      ));
    }
  }
}

