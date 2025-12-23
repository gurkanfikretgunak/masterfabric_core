import 'package:masterfabric_core/src/base/base_view_model_cubit.dart';
import 'package:masterfabric_core/src/models/empty_view_models.dart';
import 'package:masterfabric_core/src/views/empty_view/cubit/empty_view_state.dart';
import 'package:injectable/injectable.dart';

/// 📭 **Empty View Cubit**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Cubit that manages empty view operations with MVVM pattern
///
/// {@category ViewModels}
/// {@subCategory EmptyViewCubit}

@injectable
class EmptyViewCubit extends BaseViewModelCubit<EmptyViewState> {
  EmptyViewCubit() : super(const EmptyViewState());

  void setEmptyView(EmptyViewModel model) {
    stateChanger(state.copyWith(emptyViewModel: model));
  }
}
