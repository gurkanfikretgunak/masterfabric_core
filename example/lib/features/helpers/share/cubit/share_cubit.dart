import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/share/cubit/share_state.dart';

/// Share Cubit
class ShareCubit extends BaseViewModelCubit<ShareState> {
  ShareCubit() : super(const ShareState());

  Future<void> shareText(String text, {String? subject}) async {
    await ApplicationShareHelper.shareText(text, subject: subject);
  }
}

