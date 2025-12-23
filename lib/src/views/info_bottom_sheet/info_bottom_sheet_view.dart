import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:masterfabric_core/src/models/info_models.dart';
import 'package:masterfabric_core/src/views/info_bottom_sheet/cubit/info_bottom_sheet_cubit.dart';
import 'package:masterfabric_core/src/views/info_bottom_sheet/cubit/info_bottom_sheet_state.dart';

/// ℹ️ **Info Bottom Sheet View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Info bottom sheet view for displaying information modals
/// Uses MasterViewCubit for lifecycle management
/// {@category Views}
/// {@subCategory InfoBottomSheetView}

class InfoBottomSheetView extends MasterViewCubit<InfoBottomSheetCubit, InfoBottomSheetState> {
  final InfoModel infoModel;

  InfoBottomSheetView({
    required Function(String) goRoute,
    Map<String, dynamic> arguments = const {},
    required this.infoModel,
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  static void show(BuildContext context, InfoModel infoModel, Function(String) goRoute) {
    showModalBottomSheet(
      context: context,
      isDismissible: infoModel.isDismissible,
      enableDrag: infoModel.enableDrag,
      builder: (context) => InfoBottomSheetView(
        infoModel: infoModel,
        goRoute: goRoute,
      ),
    );
  }

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('ℹ️ Info Bottom Sheet View Start!');
    viewModel.showInfo(infoModel);
  }

  @override
  Widget viewContent(BuildContext context, InfoBottomSheetCubit viewModel, InfoBottomSheetState state) {
    if (!state.isVisible || state.infoModel == null) {
      return const SizedBox.shrink();
    }

    final model = state.infoModel!;
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (model.imageWidget != null) model.imageWidget!,
          const SizedBox(height: 16),
          Text(
            model.title,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          if (model.description != null) ...[
            const SizedBox(height: 8),
            Text(
              model.description!,
              textAlign: TextAlign.center,
            ),
          ],
          if (model.actions != null && model.actions!.isNotEmpty) ...[
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: model.actions!.map((action) {
                return ElevatedButton(
                  onPressed: () {
                    action.onPressed();
                    viewModel.hideInfo();
                  },
                  child: Text(action.label),
                );
              }).toList(),
            ),
          ],
        ],
      ),
    );
  }
}
