import 'package:equatable/equatable.dart';

/// Home State - Example state class
class HomeState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final String? errorMessage;
  final String? platform;

  const HomeState({
    required this.isLoading,
    required this.hasError,
    this.errorMessage,
    this.platform,
  });

  const HomeState.initial()
      : isLoading = false,
        hasError = false,
        errorMessage = null,
        platform = null;

  const HomeState.loading()
      : isLoading = true,
        hasError = false,
        errorMessage = null,
        platform = null;

  const HomeState.loaded({
    required this.platform,
  })  : isLoading = false,
        hasError = false,
        errorMessage = null;

  const HomeState.error({
    required this.errorMessage,
  })  : isLoading = false,
        hasError = true,
        platform = null;

  HomeState copyWith({
    bool? isLoading,
    bool? hasError,
    String? errorMessage,
    String? platform,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      errorMessage: errorMessage ?? this.errorMessage,
      platform: platform ?? this.platform,
    );
  }

  @override
  List<Object?> get props => [isLoading, hasError, errorMessage, platform];
}

