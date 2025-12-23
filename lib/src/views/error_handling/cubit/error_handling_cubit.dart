import 'package:masterfabric_core/src/base/base_view_model_cubit.dart';
import 'package:masterfabric_core/src/models/error_handling_models.dart';
import 'package:masterfabric_core/src/views/error_handling/cubit/error_handling_state.dart';
import 'package:injectable/injectable.dart';

/// ❌ **Error Handling Cubit**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Cubit that manages error handling operations with MVVM pattern
///
/// {@category ViewModels}
/// {@subCategory ErrorHandlingCubit}

@injectable
class ErrorHandlingCubit extends BaseViewModelCubit<ErrorHandlingState> {
  ErrorHandlingCubit() : super(const ErrorHandlingState());

  void setError(ErrorModel error) {
    stateChanger(state.copyWith(error: error, hasError: true));
  }

  void clearError() {
    stateChanger(state.copyWith(error: null, hasError: false));
  }
}
