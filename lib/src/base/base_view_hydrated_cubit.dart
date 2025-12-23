import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:masterfabric_core/src/base/base_view_model_hydrated_cubit.dart';

typedef OnViewModelReadyHydratedCubit<V> = void Function(V viewModel);
typedef OnViewModelEndHydratedCubit<V> = void Function(V viewModel);
typedef OnViewModelStateBuilderHydratedCubit<V, S> =
    Widget Function(V viewModel, BuildContext context, S state);
typedef OnStateListenerHydratedCubit<S> =
    void Function(BuildContext context, S? state);
typedef BuilderConditionHydratedCubit<S> = bool Function(S? previous, S? current);

class BaseViewHydratedCubit<V extends BaseViewModelHydratedCubit<S>, S>
    extends StatefulWidget {
  const BaseViewHydratedCubit({
    super.key,
    this.onViewModelReady,
    this.builder,
    this.onStateListener,
    this.builderCondition,
    this.onVievModelEnd,
  });

  final OnViewModelReadyHydratedCubit<V>? onViewModelReady;
  final OnViewModelEndHydratedCubit<V>? onVievModelEnd;
  final OnViewModelStateBuilderHydratedCubit<V, S>? builder;
  final OnStateListenerHydratedCubit<S>? onStateListener;
  final BuilderConditionHydratedCubit<S>? builderCondition;

  @override
  State<BaseViewHydratedCubit<V, S>> createState() =>
      _BaseViewHydratedCubitState<V, S>();
}

class _BaseViewHydratedCubitState<V extends BaseViewModelHydratedCubit<S>, S>
    extends State<BaseViewHydratedCubit<V, S>> {
  V viewModel = GetIt.I<V>();

  @override
  void initState() {
    super.initState();
    widget.onViewModelReady?.call(viewModel);
  }

  @override
  void dispose() {
    super.dispose();
    widget.onVievModelEnd?.call(viewModel);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<V>.value(
      value: viewModel,
      child: BlocConsumer<V, S>(
        listener: widget.onStateListener ?? (_, __) {},
        buildWhen: widget.builderCondition,
        builder: (context, state) {
          return widget.builder?.call(viewModel, context, state) ??
              const SizedBox();
        },
      ),
    );
  }
}

