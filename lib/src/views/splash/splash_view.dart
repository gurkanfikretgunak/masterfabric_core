import 'dart:async';
import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterfabric_core/src/views/splash/widgets/splash_startup_widget.dart';
import 'package:masterfabric_core/src/views/splash/widgets/splash_space_widget.dart';
import 'package:masterfabric_core/src/views/splash/widgets/splash_enterprise_widget.dart';
import 'package:masterfabric_core/src/views/splash/cubit/splash_cubit.dart';
import 'package:masterfabric_core/src/views/splash/cubit/splash_state.dart';
import 'package:masterfabric_core/src/helper/asset_config_helper.dart';
import 'package:masterfabric_core/src/models/splash_models.dart';
import 'package:osmea_components/osmea_components.dart';

/// 🚀 **OSMEA Splash View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Main splash view - Simple timer-based navigation
/// Uses MasterViewCubit for lifecycle management
/// {@category Views}
/// {@subCategory SplashView}

class SplashView extends MasterViewCubit<SplashCubit, SplashState> {
  /// Callback triggered when splash begins
  final VoidCallback? onStart;

  /// Callback triggered when splash ends
  final VoidCallback? onComplete;

  SplashView({
    required Function(String) goRoute,
    Map<String, dynamic> arguments = const {'splash': true},
    this.onStart,
    this.onComplete,
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
          useSafeArea: false,
          horizontalPadding: const PaddingVisibility.disabled(),
          navbarSpacer: const SpacerVisibility.disabled(),
          footerSpacer: const SpacerVisibility.disabled(),
          backgroundColor: OsmeaColors.white, // Default background
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('🚀 Splash View Start!');

    // Trigger onStart callback
    onStart?.call();

    // Initialize the splash cubit with app configuration
    // This will trigger the timer and navigation target determination
    // Don't await to prevent blocking
    viewModel.initializeSplash();
  }

  @override
  Widget viewContent(BuildContext context, viewModel, state) {
    // Get auto-navigation setting from config (synchronous access)
    final configHelper = AssetConfigHelper();
    final shouldAutoNavigate =
        configHelper.getBool('splashConfiguration.autoNavigate', true);

    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        // Handle navigation when splash completes
        if (shouldAutoNavigate &&
            state.status == SplashStatus.completed &&
            state.navigationTarget != null) {
          debugPrint('🧭 Navigating to: ${state.navigationTarget}');

          // Trigger onComplete callback
          onComplete?.call();

          // Use postFrameCallback to ensure state is fully updated before navigation
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (context.mounted) {
              try {
                super.goRoute(state.navigationTarget!);
              } catch (e) {
                debugPrint('❌ Error navigating from splash: $e');
                // Fallback to home on error
                super.goRoute('/home');
              }
            }
          });
        }
      },
      child: FutureBuilder<SplashStyle>(
        future: _getSplashStyleFromConfig(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasData) {
            // Use the splash style from config
            return _getSplashWidget(snapshot.data!);
          } else {
            // Default to startup style if config not available
            debugPrint(
                '⚠️ Could not get splash style from config, using default');
            return _getSplashWidget(SplashStyle.startup);
          }
        },
      ),
    );
  }

  /// Get splash style from config
  Future<SplashStyle> _getSplashStyleFromConfig() async {
    final configHelper = AssetConfigHelper();
    await configHelper.loadConfig();

    final styleString =
        configHelper.getString('splashConfiguration.style', 'startup');
    final style = _parseStyleFromString(styleString);

    debugPrint('🎨 Splash style from config: $styleString -> $style');

    return style;
  }

  /// Convert string to SplashStyle enum
  SplashStyle _parseStyleFromString(String styleString) {
    switch (styleString.toLowerCase()) {
      case 'space':
        return SplashStyle.space;
      case 'enterprise':
        return SplashStyle.enterprise;
      case 'startup':
      default:
        return SplashStyle.startup;
    }
  }

  /// Get appropriate splash widget based on style
  Widget _getSplashWidget(SplashStyle style) {
    // Use the appropriate splash widget based on style
    switch (style) {
      case SplashStyle.startup:
        return SplashStartupWidget(onLogoTap: () => super.goRoute('/home'));
      case SplashStyle.space:
        return SplashSpaceWidget(onLogoTap: () => super.goRoute('/home'));
      case SplashStyle.enterprise:
        return SplashEnterpriseWidget(
            onLogoTap: () => super.goRoute('/home'));
    }
  }
}
