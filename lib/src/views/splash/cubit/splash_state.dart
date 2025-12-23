import 'package:equatable/equatable.dart';
import 'package:masterfabric_core/src/models/splash_models.dart';

/// 🚀 **OSMEA Splash State**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// State management for Splash Cubit
///
/// {@category States}
/// {@subCategory SplashState}

/// 🚀 Splash status enum
enum SplashStatus {
  /// Initial state
  initial,

  /// Loading configuration
  loading,

  /// Configuration loaded, showing splash content
  ready,

  /// Error occurred during initialization
  error,

  /// Splash completed, ready to navigate
  completed,

  /// Navigating to next screen
  navigating,
}

/// 🚀 Splash state class
class SplashState extends Equatable {
  /// Current status
  final SplashStatus status;

  /// Splash configuration model
  final SplashConfigModel? config;

  /// Error message
  final String? errorMessage;

  /// Navigation target
  final String? navigationTarget;

  /// Logo tap count for dev mode
  final int logoTapCount;

  /// Whether dev mode is active
  final bool isDevModeActive;

  const SplashState({
    this.status = SplashStatus.initial,
    this.config,
    this.errorMessage,
    this.navigationTarget,
    this.logoTapCount = 0,
    this.isDevModeActive = false,
  });

  /// Create a copy of this state with some fields changed
  SplashState copyWith({
    SplashStatus? status,
    SplashConfigModel? config,
    String? errorMessage,
    String? navigationTarget,
    int? logoTapCount,
    bool? isDevModeActive,
  }) {
    return SplashState(
      status: status ?? this.status,
      config: config ?? this.config,
      errorMessage: errorMessage ?? this.errorMessage,
      navigationTarget: navigationTarget ?? this.navigationTarget,
      logoTapCount: logoTapCount ?? this.logoTapCount,
      isDevModeActive: isDevModeActive ?? this.isDevModeActive,
    );
  }

  @override
  List<Object?> get props => [
        status,
        config,
        errorMessage,
        navigationTarget,
        logoTapCount,
        isDevModeActive,
      ];

  @override
  String toString() {
    return 'SplashState('
        'status: $status, '
        'hasConfig: ${config != null}, '
        'navigationTarget: $navigationTarget, '
        'logoTapCount: $logoTapCount, '
        'isDevModeActive: $isDevModeActive'
        ')';
  }
}
