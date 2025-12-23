import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

/// 🧑‍💻 Type definition for a callback that is called when the ViewModel is ready.
/// Useful for initializing data or starting listeners.
typedef OnViewModelReadyCubit<V> = void Function(V viewModel);

/// 🧹 Type definition for a callback that is called when the ViewModel is about to be disposed.
/// Useful for cleaning up resources.
typedef OnViewModelEndCubit<V> = void Function(V viewModel);

/// 🖼️ Type definition for the builder function that builds the UI based on the ViewModel and state.
typedef OnViewModelStaeBuilderCubit<V, S> = Widget Function(
    V viewModel, BuildContext context, S state);

/// 🎧 Type definition for a listener that reacts to state changes.
typedef OnStateListenerCubit<S> = void Function(BuildContext context, S? state);

/// 🔄 Type definition for a condition to determine whether the builder should be called.
/// Returns true if the widget should rebuild.
typedef BuilderConditionCubit<S> = bool Function(S? previues, S? current);

/// A base widget that provides a standardized way to work with Cubit-based view models
/// This widget handles the lifecycle of view models and provides callbacks for different events
///
/// Generic types:
/// - V: The view model type that extends BaseViewModelCubit<S>
/// - S: The state type that the view model manages
class BaseViewCubit<V extends BaseViewModelCubit<S>, S> extends StatefulWidget {
  const BaseViewCubit({
    super.key,
    this.onViewModelReady,
    this.builder,
    this.onStateListener,
    this.builderCondition,
    this.onVievModelEnd,
  });

  /// Callback executed when the view model is ready (during initState)
  final OnViewModelReadyCubit<V>? onViewModelReady;

  /// Callback executed when the view model is about to be disposed
  final OnViewModelEndCubit<V>? onVievModelEnd;

  /// Builder function that creates the UI based on view model and current state
  final OnViewModelStaeBuilderCubit<V, S>? builder;

  /// Listener for state changes, useful for side effects like navigation or showing dialogs
  final OnStateListenerCubit<S>? onStateListener;

  /// Condition function to determine when the UI should rebuild
  /// If null, the UI will rebuild on every state change
  final BuilderConditionCubit<S>? builderCondition;

  @override
  State<BaseViewCubit<V, S>> createState() => _BaseViewCubitState<V, S>();
}

/// Private state class that manages the lifecycle and rendering of the BaseViewCubit widget
class _BaseViewCubitState<V extends BaseViewModelCubit<S>, S>
    extends State<BaseViewCubit<V, S>> {
  /// The view model instance retrieved from the GetIt dependency injection container
  /// This ensures the same instance is used throughout the widget's lifecycle
  V viewModel = GetIt.I<V>();

  @override
  void initState() {
    super.initState();
    // Notify the parent widget that the view model is ready for use
    // This is typically used to initialize data or start processes
    widget.onViewModelReady?.call(viewModel);
  }

  @override
  void dispose() {
    super.dispose();
    // Notify the parent widget that the view model is about to be disposed
    // This is typically used for cleanup operations
    widget.onVievModelEnd?.call(viewModel);
  }

  @override
  Widget build(BuildContext context) {
    // Provide the view model to the widget tree using BlocProvider
    // This makes the view model available to child widgets via context.read<V>()
    return BlocProvider<V>.value(
      value: viewModel,
      child: BlocConsumer<V, S>(
        // Listen to state changes for side effects (navigation, dialogs, etc.)
        listener: widget.onStateListener ?? (_, __) {},
        // Conditionally rebuild the UI based on state changes
        // If builderCondition is null, rebuild on every state change
        buildWhen: widget.builderCondition,
        builder: (context, state) {
          // Build the UI using the provided builder function
          // If no builder is provided, return an empty SizedBox
          return widget.builder?.call(viewModel, context, state) ??
              const SizedBox();
        },
      ),
    );
  }
}
