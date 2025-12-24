import 'package:equatable/equatable.dart';

/// Config State
class ConfigState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final String? errorMessage;
  final Map<String, dynamic>? config;

  const ConfigState({
    required this.isLoading,
    required this.hasError,
    this.errorMessage,
    this.config,
  });

  const ConfigState.initial()
      : isLoading = false,
        hasError = false,
        errorMessage = null,
        config = null;

  const ConfigState.loading()
      : isLoading = true,
        hasError = false,
        errorMessage = null,
        config = null;

  const ConfigState.loaded({
    required this.config,
  })  : isLoading = false,
        hasError = false,
        errorMessage = null;

  const ConfigState.error({
    required this.errorMessage,
  })  : isLoading = false,
        hasError = true,
        config = null;

  @override
  List<Object?> get props => [isLoading, hasError, errorMessage, config];
}

