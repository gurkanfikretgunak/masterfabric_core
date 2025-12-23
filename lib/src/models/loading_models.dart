import 'package:equatable/equatable.dart';

/// Loading state configuration model
class LoadingModel extends Equatable {
  final String? message;
  final bool showProgress;
  final double? progress;

  const LoadingModel({
    this.message,
    this.showProgress = true,
    this.progress,
  });

  @override
  List<Object?> get props => [message, showProgress, progress];

  LoadingModel copyWith({
    String? message,
    bool? showProgress,
    double? progress,
  }) {
    return LoadingModel(
      message: message ?? this.message,
      showProgress: showProgress ?? this.showProgress,
      progress: progress ?? this.progress,
    );
  }
}

/// Loading type enum
enum LoadingType {
  circular,
  linear,
  custom,
}

/// Loading configuration
class LoadingConfig extends Equatable {
  final LoadingType type;
  final String? message;
  final bool dismissible;
  final Duration? timeout;

  const LoadingConfig({
    this.type = LoadingType.circular,
    this.message,
    this.dismissible = false,
    this.timeout,
  });

  @override
  List<Object?> get props => [type, message, dismissible, timeout];
}
