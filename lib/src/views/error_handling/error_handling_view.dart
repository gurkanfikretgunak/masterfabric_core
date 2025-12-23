import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:masterfabric_core/src/views/error_handling/cubit/error_handling_cubit.dart';
import 'package:masterfabric_core/src/views/error_handling/cubit/error_handling_state.dart';
import 'package:masterfabric_core/src/models/error_handling_models.dart';

/// ❌ **Error Handling View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Error handling view for displaying error states
/// Uses MasterViewCubit for lifecycle management
/// {@category Views}
/// {@subCategory ErrorHandlingView}

class ErrorHandlingView extends MasterViewCubit<ErrorHandlingCubit, ErrorHandlingState> {
  final ErrorModel? initialError;

  ErrorHandlingView({
    required Function(String) goRoute,
    Map<String, dynamic> arguments = const {},
    this.initialError,
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('❌ Error Handling View Start!');
    if (initialError != null) {
      viewModel.setError(initialError!);
    }
  }

  @override
  Widget viewContent(BuildContext context, ErrorHandlingCubit viewModel, ErrorHandlingState state) {
    if (!state.hasError || state.error == null) {
      return const SizedBox.shrink();
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              state.error!.message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            if (state.error!.code != null) ...[
              const SizedBox(height: 8),
              Text(
                '${resources.error.error_code}: ${state.error!.code}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => viewModel.clearError(),
              child: Text(resources.common.dismiss),
            ),
          ],
        ),
      ),
    );
  }
}
