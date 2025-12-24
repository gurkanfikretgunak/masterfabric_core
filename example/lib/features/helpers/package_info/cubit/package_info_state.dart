import 'package:equatable/equatable.dart';

/// Package Info State
class PackageInfoState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final String? errorMessage;
  final String? appName;
  final String? packageName;
  final String? version;
  final String? buildNumber;
  final String? versionAndBuild;

  const PackageInfoState({
    required this.isLoading,
    required this.hasError,
    this.errorMessage,
    this.appName,
    this.packageName,
    this.version,
    this.buildNumber,
    this.versionAndBuild,
  });

  const PackageInfoState.initial()
      : isLoading = false,
        hasError = false,
        errorMessage = null,
        appName = null,
        packageName = null,
        version = null,
        buildNumber = null,
        versionAndBuild = null;

  const PackageInfoState.loading()
      : isLoading = true,
        hasError = false,
        errorMessage = null,
        appName = null,
        packageName = null,
        version = null,
        buildNumber = null,
        versionAndBuild = null;

  const PackageInfoState.loaded({
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
    required this.versionAndBuild,
  })  : isLoading = false,
        hasError = false,
        errorMessage = null;

  const PackageInfoState.error({
    required this.errorMessage,
  })  : isLoading = false,
        hasError = true,
        appName = null,
        packageName = null,
        version = null,
        buildNumber = null,
        versionAndBuild = null;

  @override
  List<Object?> get props => [
        isLoading,
        hasError,
        errorMessage,
        appName,
        packageName,
        version,
        buildNumber,
        versionAndBuild,
      ];
}

