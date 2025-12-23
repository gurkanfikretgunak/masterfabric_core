import 'package:equatable/equatable.dart';

/// 🎯 BaseViewState provides a standardized state pattern for all viewer components.
/// 
/// This sealed class ensures consistent state management across:
/// - CoreRawDataViewer
/// - CoreWebViewViewer
/// - Any future viewer components
/// 
/// Features:
/// - 🔄 Loading state for async operations
/// - ❌ Error state with descriptive messages
/// - ✅ Content state with typed data
/// - 🎭 Pattern matching with `when` method
/// 
/// Example usage:
/// ```dart
/// state.when(
///   loading: () => const CircularProgressIndicator(),
///   error: (message) => Text('Error: $message'),
///   content: (data) => MyContentWidget(data: data),
/// );
/// ```
sealed class BaseViewState<T> extends Equatable {
  const BaseViewState();

  /// 🎭 Pattern matching method for handling different states
  /// 
  /// Parameters:
  /// - [loading]: Called when state is loading
  /// - [error]: Called when state is error, receives error message
  /// - [content]: Called when state has content, receives typed data
  R when<R>({
    required R Function() loading,
    required R Function(String message) error,
    required R Function(T data) content,
  }) {
    return switch (this) {
      BaseViewStateLoading<T> _ => loading(),
      BaseViewStateError<T> _ => error((this as BaseViewStateError<T>).message),
      BaseViewStateContent<T> _ => content((this as BaseViewStateContent<T>).data),
    };
  }

  /// 🔄 Factory constructor for loading state
  const factory BaseViewState.loading() = BaseViewStateLoading<T>;

  /// ❌ Factory constructor for error state
  const factory BaseViewState.error(String message) = BaseViewStateError<T>;

  /// ✅ Factory constructor for content state
  const factory BaseViewState.content(T data) = BaseViewStateContent<T>;

  /// 🔍 Check if current state is loading
  bool get isLoading => this is BaseViewStateLoading<T>;

  /// 🔍 Check if current state is error
  bool get isError => this is BaseViewStateError<T>;

  /// 🔍 Check if current state has content
  bool get hasContent => this is BaseViewStateContent<T>;

  /// 📊 Get content data if available, null otherwise
  T? get contentData => switch (this) {
    BaseViewStateContent<T> state => state.data,
    _ => null,
  };

  /// 📊 Get error message if available, null otherwise
  String? get errorMessage => switch (this) {
    BaseViewStateError<T> state => state.message,
    _ => null,
  };
}

/// 🔄 Loading state - indicates async operation is in progress
final class BaseViewStateLoading<T> extends BaseViewState<T> {
  const BaseViewStateLoading();

  @override
  List<Object?> get props => [];
}

/// ❌ Error state - indicates operation failed with error message
final class BaseViewStateError<T> extends BaseViewState<T> {
  const BaseViewStateError(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

/// ✅ Content state - indicates operation succeeded with data
final class BaseViewStateContent<T> extends BaseViewState<T> {
  const BaseViewStateContent(this.data);

  final T data;

  @override
  List<Object?> get props => [data];
}
