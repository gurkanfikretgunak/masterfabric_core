import 'package:equatable/equatable.dart';
import 'package:masterfabric_core/src/models/error_handling_models.dart';

/// ❌ **Error Handling State**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// State management for Error Handling Cubit
///
/// {@category States}
/// {@subCategory ErrorHandlingState}

/// ❌ Error handling state class
class ErrorHandlingState extends Equatable {
  final ErrorModel? error;
  final bool hasError;

  const ErrorHandlingState({
    this.error,
    this.hasError = false,
  });

  /// Create a copy of this state with some fields changed
  ErrorHandlingState copyWith({
    ErrorModel? error,
    bool? hasError,
  }) {
    return ErrorHandlingState(
      error: error ?? this.error,
      hasError: hasError ?? this.hasError,
    );
  }

  @override
  List<Object?> get props => [error, hasError];

  @override
  String toString() {
    return 'ErrorHandlingState('
        'hasError: $hasError, '
        'error: ${error?.message}'
        ')';
  }
}
