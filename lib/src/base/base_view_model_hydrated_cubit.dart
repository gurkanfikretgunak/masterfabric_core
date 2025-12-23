import 'package:hydrated_bloc/hydrated_bloc.dart';

/// Minimal hydrated base for Cubit view models.
///
/// Extend this class and implement [toJson] and [fromJson] for your state type [S].
abstract class BaseViewModelHydratedCubit<S> extends HydratedCubit<S> {
  BaseViewModelHydratedCubit(super.state);

  /// Convenient setter to update current state.
  set stateCurrentValue(S value) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(value);
  }

  /// Emits the next state.
  void stateChanger(S state) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(state);
  }

  /// Keep default HydratedCubit behavior; subclasses may override if needed.
  @override
  void onChange(Change<S> change) {
    super.onChange(change);
  }

  /// Serialize state to JSON for hydration.
  @override
  Map<String, dynamic>? toJson(S state);

  /// Deserialize state from JSON for hydration.
  @override
  S? fromJson(Map<String, dynamic> json);
}

