import 'package:masterfabric_core/src/base/base_view_model_cubit.dart';
import 'package:masterfabric_core/src/models/onboarding_models.dart';
import 'package:masterfabric_core/src/views/onboarding/cubit/onboarding_state.dart';
import 'package:masterfabric_core/src/helper/onboarding_helper.dart';
import 'package:injectable/injectable.dart';

/// 🎯 **Onboarding Cubit**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Cubit that manages onboarding operations with MVVM pattern
///
/// {@category ViewModels}
/// {@subCategory OnboardingCubit}

@injectable
class OnboardingCubit extends BaseViewModelCubit<OnboardingState> {
  final OnboardingConfig? config;
  final OnboardingStorageHelper _onboardingHelper = OnboardingStorageHelper();

  OnboardingCubit({this.config}) : super(const OnboardingState());

  void nextPage() {
    if (config == null) return;
    if (state.currentPage < config!.pages.length - 1) {
      stateChanger(state.copyWith(currentPage: state.currentPage + 1));
    } else {
      completeOnboarding();
    }
  }

  void previousPage() {
    if (state.currentPage > 0) {
      stateChanger(state.copyWith(currentPage: state.currentPage - 1));
    }
  }

  void skip() {
    completeOnboarding();
  }

  Future<void> completeOnboarding() async {
    await _onboardingHelper.markOnboardingSeen();
    stateChanger(state.copyWith(
      isCompleted: true,
      navigationTarget: '/home',
    ));
  }
}
