import 'package:equatable/equatable.dart';
import 'package:masterfabric_core/src/models/loading_models.dart';

/// ⏳ **Loading State**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// State management for Loading Cubit
///
/// {@category States}
/// {@subCategory LoadingState}

/// ⏳ Loading state class
class LoadingState extends Equatable {
  final LoadingModel? loadingModel;
  final bool isLoading;

  const LoadingState({
    this.loadingModel,
    this.isLoading = false,
  });

  /// Create a copy of this state with some fields changed
  LoadingState copyWith({
    LoadingModel? loadingModel,
    bool? isLoading,
  }) {
    return LoadingState(
      loadingModel: loadingModel ?? this.loadingModel,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [loadingModel, isLoading];

  @override
  String toString() {
    return 'LoadingState('
        'isLoading: $isLoading, '
        'message: ${loadingModel?.message}'
        ')';
  }
}
