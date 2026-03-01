import '../../context/template_context.dart';

/// Template for `lib/app/di/injection.dart`.
class DiTemplate {
  DiTemplate._();

  static String generate(TemplateContext ctx) => '''
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

import '../../views/home/cubit/home_cubit.dart';
import '../../views/profile/cubit/profile_cubit.dart';
import '../../views/settings/cubit/theme_cubit.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() {
  // getIt.init();  // Uncomment after running build_runner
  _registerCoreCubits();
  _registerAppCubits();
}

void _registerCoreCubits() {
  if (!getIt.isRegistered<SplashCubit>()) {
    getIt.registerFactory<SplashCubit>(() => SplashCubit());
  }
  if (!getIt.isRegistered<AuthCubit>()) {
    getIt.registerFactory<AuthCubit>(() => AuthCubit());
  }
  if (!getIt.isRegistered<OnboardingCubit>()) {
    getIt.registerFactory<OnboardingCubit>(() => OnboardingCubit());
  }
  if (!getIt.isRegistered<ErrorHandlingCubit>()) {
    getIt.registerFactory<ErrorHandlingCubit>(() => ErrorHandlingCubit());
  }
  if (!getIt.isRegistered<EmptyViewCubit>()) {
    getIt.registerFactory<EmptyViewCubit>(() => EmptyViewCubit());
  }
}

void _registerAppCubits() {
  if (!getIt.isRegistered<ThemeCubit>()) {
    getIt.registerSingleton<ThemeCubit>(ThemeCubit());
  }
  if (!getIt.isRegistered<HomeCubit>()) {
    getIt.registerFactory<HomeCubit>(() => HomeCubit());
  }
  if (!getIt.isRegistered<ProfileCubit>()) {
    getIt.registerFactory<ProfileCubit>(() => ProfileCubit());
  }
}
''';
}
