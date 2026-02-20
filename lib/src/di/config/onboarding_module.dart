import 'package:injectable/injectable.dart';
import 'package:masterfabric_core/src/models/onboarding_models.dart';

/// Provides default [OnboardingConfig] for dependency injection.
/// Apps can override by registering their own config before init.
@module
abstract class OnboardingModule {
  @lazySingleton
  OnboardingConfig get onboardingConfig => const OnboardingConfig(
        pages: [],
      );
}
