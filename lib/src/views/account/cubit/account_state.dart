import 'package:equatable/equatable.dart';

/// 👤 **Account State**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// State management for Account Cubit
///
/// {@category States}
/// {@subCategory AccountState}

/// 👤 Account state class
class AccountState extends Equatable {
  final bool isLoading;
  final String? userName;
  final String? userEmail;
  final String? errorMessage;
  final String? navigationTarget;

  const AccountState({
    this.isLoading = false,
    this.userName,
    this.userEmail,
    this.errorMessage,
    this.navigationTarget,
  });

  /// Create a copy of this state with some fields changed
  AccountState copyWith({
    bool? isLoading,
    String? userName,
    String? userEmail,
    String? errorMessage,
    String? navigationTarget,
  }) {
    return AccountState(
      isLoading: isLoading ?? this.isLoading,
      userName: userName ?? this.userName,
      userEmail: userEmail ?? this.userEmail,
      errorMessage: errorMessage ?? this.errorMessage,
      navigationTarget: navigationTarget ?? this.navigationTarget,
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
        userName,
        userEmail,
        errorMessage,
        navigationTarget,
      ];

  @override
  String toString() {
    return 'AccountState('
        'isLoading: $isLoading, '
        'userName: $userName, '
        'userEmail: $userEmail'
        ')';
  }
}
