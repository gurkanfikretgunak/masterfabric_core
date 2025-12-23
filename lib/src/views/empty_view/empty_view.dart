import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:masterfabric_core/src/models/empty_view_models.dart';
import 'package:masterfabric_core/src/views/empty_view/cubit/empty_view_cubit.dart';
import 'package:masterfabric_core/src/views/empty_view/cubit/empty_view_state.dart';

/// 📭 **Empty View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Empty view for displaying empty states
/// Uses MasterViewCubit for lifecycle management
/// {@category Views}
/// {@subCategory EmptyView}

class EmptyView extends MasterViewCubit<EmptyViewCubit, EmptyViewState> {
  final EmptyViewModel? emptyViewModel;

  EmptyView({
    required Function(String) goRoute,
    Map<String, dynamic> arguments = const {},
    this.emptyViewModel,
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('📭 Empty View Start!');
    if (emptyViewModel != null) {
      viewModel.setEmptyView(emptyViewModel!);
    }
  }

  @override
  Widget viewContent(BuildContext context, EmptyViewCubit viewModel, EmptyViewState state) {
    if (state.emptyViewModel == null) {
      return const SizedBox.shrink();
    }

    final model = state.emptyViewModel!;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (model.imageWidget != null) model.imageWidget!,
            const SizedBox(height: 16),
            Text(
              model.title,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            if (model.description != null) ...[
              const SizedBox(height: 8),
              Text(
                model.description!,
                textAlign: TextAlign.center,
              ),
            ],
            if (model.actionLabel != null && model.onAction != null) ...[
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: model.onAction,
                child: Text(model.actionLabel!),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
