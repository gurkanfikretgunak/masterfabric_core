import 'package:equatable/equatable.dart';

/// Error handling data model
class ErrorModel extends Equatable {
  final String message;
  final String? code;
  final Object? error;
  final StackTrace? stackTrace;
  final ErrorType type;

  const ErrorModel({
    required this.message,
    this.code,
    this.error,
    this.stackTrace,
    this.type = ErrorType.generic,
  });

  @override
  List<Object?> get props => [message, code, error, stackTrace, type];

  ErrorModel copyWith({
    String? message,
    String? code,
    Object? error,
    StackTrace? stackTrace,
    ErrorType? type,
  }) {
    return ErrorModel(
      message: message ?? this.message,
      code: code ?? this.code,
      error: error ?? this.error,
      stackTrace: stackTrace ?? this.stackTrace,
      type: type ?? this.type,
    );
  }
}

/// Error type enum
enum ErrorType {
  generic,
  network,
  unauthorized,
  notFound,
  validation,
  server,
  unknown,
}

/// Error action model
class ErrorAction extends Equatable {
  final String label;
  final void Function() onPressed;

  const ErrorAction({
    required this.label,
    required this.onPressed,
  });

  @override
  List<Object?> get props => [label];
}
