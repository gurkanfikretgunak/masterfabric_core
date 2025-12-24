import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/app/routes.dart' as app_routes;
import 'package:masterfabric_core_example/features/home/cubit/home_cubit.dart';
import 'package:masterfabric_core_example/features/products/cubit/products_cubit.dart';
import 'package:masterfabric_core_example/features/profile/cubit/profile_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/device_info/cubit/device_info_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/storage/cubit/storage_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/datetime/cubit/datetime_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/url_launcher/cubit/url_launcher_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/permissions/cubit/permissions_cubit.dart' as helper_permissions;
import 'package:masterfabric_core_example/features/helpers/share/cubit/share_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/download/cubit/download_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/config/cubit/config_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/package_info/cubit/package_info_cubit.dart';
import 'package:masterfabric_core_example/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Register cubits with GetIt
  _registerCubits();
  
  // Initialize MasterApp components
  await MasterApp.runBefore(
    assetConfigPath: 'assets/app_config.json',
    hydrated: true, // Enable state persistence
  );
  
  // Create router
  final router = app_routes.AppRoutes.createRouter();
  
  runApp(MyApp(router: router));
}

/// Register all cubits with GetIt
void _registerCubits() {
  final getIt = GetIt.instance;
  
  // Register example app cubits as factories (new instance each time)
  getIt.registerFactory<HomeCubit>(() => HomeCubit());
  getIt.registerFactory<ProductsCubit>(() => ProductsCubit());
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit());
  
  // Register helper cubits
  getIt.registerFactory<DeviceInfoCubit>(() => DeviceInfoCubit());
  getIt.registerFactory<StorageCubit>(() => StorageCubit());
  getIt.registerFactory<DateTimeCubit>(() => DateTimeCubit());
  getIt.registerFactory<UrlLauncherCubit>(() => UrlLauncherCubit());
  getIt.registerFactory<helper_permissions.HelperPermissionsCubit>(() => helper_permissions.HelperPermissionsCubit());
  getIt.registerFactory<ShareCubit>(() => ShareCubit());
  getIt.registerFactory<DownloadCubit>(() => DownloadCubit());
  getIt.registerFactory<ConfigCubit>(() => ConfigCubit());
  getIt.registerFactory<PackageInfoCubit>(() => PackageInfoCubit());
  
  // Register masterfabric_core cubits that are used in routes
  // These are needed because BaseViewCubit uses GetIt to resolve cubits
  getIt.registerFactory<SplashCubit>(() => SplashCubit());
  getIt.registerFactory<AuthCubit>(() => AuthCubit());
  getIt.registerFactory<OnboardingCubit>(() => OnboardingCubit());
  getIt.registerFactory<ErrorHandlingCubit>(() => ErrorHandlingCubit());
  getIt.registerFactory<EmptyViewCubit>(() => EmptyViewCubit());
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({
    super.key,
    required this.router,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.lightTheme,
      child: MasterApp(
        router: router,
        shouldSetOrientation: true,
        preferredOrientations: [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
        showPerformanceOverlay: false,
        textDirection: TextDirection.ltr,
        fontScale: 1.0,
      ),
    );
  }
}

