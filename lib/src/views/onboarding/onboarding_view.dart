import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterfabric_core/src/models/onboarding_models.dart';
import 'package:masterfabric_core/src/views/onboarding/cubit/onboarding_cubit.dart';
import 'package:masterfabric_core/src/views/onboarding/cubit/onboarding_state.dart';

/// 🎯 **Onboarding View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Onboarding view for first-time user experience
/// Uses MasterViewCubit for lifecycle management
/// {@category Views}
/// {@subCategory OnboardingView}

class OnboardingView extends MasterViewCubit<OnboardingCubit, OnboardingState> {
  final OnboardingConfig? config;

  OnboardingView({
    required Function(String) goRoute,
    Map<String, dynamic> arguments = const {},
    this.config,
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('🎯 Onboarding View Start!');
    // Initialize onboarding if needed
  }

  @override
  Widget viewContent(BuildContext context, OnboardingCubit viewModel, OnboardingState state) {
    return BlocListener<OnboardingCubit, OnboardingState>(
      listener: (context, state) {
        if (state.isCompleted && state.navigationTarget != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (context.mounted) {
              super.goRoute(state.navigationTarget!);
            }
          });
        }
      },
      child: _buildOnboardingContent(context, viewModel, state),
    );
  }

  Widget _buildOnboardingContent(BuildContext context, OnboardingCubit viewModel, OnboardingState state) {
    if (config == null || config!.pages.isEmpty) {
      return Center(child: Text(resources.onboarding.no_pages_configured));
    }

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: PageController(initialPage: state.currentPage),
              itemCount: config!.pages.length,
              itemBuilder: (context, index) {
                final pageData = config!.pages[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (pageData.imageWidget != null) pageData.imageWidget!,
                    const SizedBox(height: 24),
                    Text(
                      pageData.title,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    if (pageData.description.isNotEmpty) ...[
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          pageData.description,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (state.currentPage > 0)
                  TextButton(
                    onPressed: () => viewModel.previousPage(),
                    child: Text(resources.onboarding.previous),
                  )
                else
                  const SizedBox(),
                TextButton(
                  onPressed: () => viewModel.skip(),
                  child: Text(resources.onboarding.skip),
                ),
                ElevatedButton(
                  onPressed: () => viewModel.nextPage(),
                  child: Text(state.currentPage < config!.pages.length - 1 ? resources.onboarding.next : resources.onboarding.get_started),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
