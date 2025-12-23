import 'package:masterfabric_core/src/base/base_view_model_cubit.dart';
import 'package:masterfabric_core/src/models/info_models.dart';
import 'package:masterfabric_core/src/views/info_bottom_sheet/cubit/info_bottom_sheet_state.dart';
import 'package:injectable/injectable.dart';

/// ℹ️ **Info Bottom Sheet Cubit**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Cubit that manages info bottom sheet operations with MVVM pattern
///
/// {@category ViewModels}
/// {@subCategory InfoBottomSheetCubit}

@injectable
class InfoBottomSheetCubit extends BaseViewModelCubit<InfoBottomSheetState> {
  InfoBottomSheetCubit() : super(const InfoBottomSheetState());

  void showInfo(InfoModel model) {
    stateChanger(state.copyWith(infoModel: model, isVisible: true));
  }

  void hideInfo() {
    stateChanger(state.copyWith(isVisible: false));
  }
}
