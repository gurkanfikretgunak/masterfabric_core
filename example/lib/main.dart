import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/app/routes.dart' as app_routes;
import 'package:masterfabric_core_example/features/home/cubit/home_cubit.dart';
import 'package:masterfabric_core_example/features/products/cubit/products_cubit.dart';
import 'package:masterfabric_core_example/features/profile/cubit/profile_cubit.dart';

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
    return MasterApp(
      router: router,
      shouldSetOrientation: true,
      preferredOrientations: [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
      showPerformanceOverlay: false,
      textDirection: TextDirection.ltr,
      fontScale: 1.0,
    );
  }
}

