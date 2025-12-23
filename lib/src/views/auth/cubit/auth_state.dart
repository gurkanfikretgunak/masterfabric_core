import 'package:equatable/equatable.dart';

/// 🔐 **Authentication State**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// State management for Auth Cubit
///
/// {@category States}
/// {@subCategory AuthState}

/// Auth tab type enum
enum AuthTabType {
  signIn,
  signUp,
}

/// 🔐 Auth state class
class AuthState extends Equatable {
  final AuthTabType currentTab;
  final bool isLoading;
  final String? errorMessage;
  final bool isAuthenticated;
  final String? navigationTarget;

  const AuthState({
    this.currentTab = AuthTabType.signIn,
    this.isLoading = false,
    this.errorMessage,
    this.isAuthenticated = false,
    this.navigationTarget,
  });

  /// Create a copy of this state with some fields changed
  AuthState copyWith({
    AuthTabType? currentTab,
    bool? isLoading,
    String? errorMessage,
    bool? isAuthenticated,
    String? navigationTarget,
  }) {
    return AuthState(
      currentTab: currentTab ?? this.currentTab,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      navigationTarget: navigationTarget ?? this.navigationTarget,
    );
  }

  @override
  List<Object?> get props => [
        currentTab,
        isLoading,
        errorMessage,
        isAuthenticated,
        navigationTarget,
      ];

  @override
  String toString() {
    return 'AuthState('
        'currentTab: $currentTab, '
        'isLoading: $isLoading, '
        'isAuthenticated: $isAuthenticated, '
        'navigationTarget: $navigationTarget'
        ')';
  }
}
