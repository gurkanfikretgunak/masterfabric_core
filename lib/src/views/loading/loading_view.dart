import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:masterfabric_core/src/views/loading/cubit/loading_cubit.dart' as loading;
import 'package:masterfabric_core/src/views/loading/cubit/loading_state.dart' as loading;

/// ⏳ **Loading View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Loading view for displaying loading states
/// Uses MasterViewCubit for lifecycle management
/// {@category Views}
/// {@subCategory LoadingView}

class LoadingView extends MasterViewCubit<loading.LoadingCubit, loading.LoadingState> {
  final String? initialMessage;
  final double? initialProgress;

  LoadingView({
    required Function(String) goRoute,
    Map<String, dynamic> arguments = const {},
    this.initialMessage,
    this.initialProgress,
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('⏳ Loading View Start!');
    if (initialMessage != null || initialProgress != null) {
      viewModel.showLoading(message: initialMessage, progress: initialProgress);
    }
  }

  @override
  Widget viewContent(BuildContext context, loading.LoadingCubit viewModel, loading.LoadingState state) {
    if (!state.isLoading) {
      return const SizedBox.shrink();
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (state.loadingModel?.progress != null)
            CircularProgressIndicator(value: state.loadingModel!.progress)
          else
            const CircularProgressIndicator(),
          if (state.loadingModel?.message != null) ...[
            const SizedBox(height: 16),
            Text(state.loadingModel!.message!),
          ],
        ],
      ),
    );
  }
}
