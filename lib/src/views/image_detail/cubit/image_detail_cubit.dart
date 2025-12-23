import 'package:masterfabric_core/src/base/base_view_model_cubit.dart';
import 'package:masterfabric_core/src/views/image_detail/cubit/image_detail_state.dart';
import 'package:injectable/injectable.dart';

/// 🖼️ **Image Detail Cubit**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Cubit that manages image detail operations with MVVM pattern
///
/// {@category ViewModels}
/// {@subCategory ImageDetailCubit}

@injectable
class ImageDetailCubit extends BaseViewModelCubit<ImageDetailState> {
  ImageDetailCubit({required String imageUrl, String? title})
      : super(ImageDetailState(imageUrl: imageUrl, title: title));
}
