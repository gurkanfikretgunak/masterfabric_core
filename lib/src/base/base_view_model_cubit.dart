import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

/// 🌟
/// BaseViewModelCubit is an abstract base class that extends Flutter's Cubit for state management.
/// It provides a standardized foundation for all Cubit-based view models in the application.
///
/// This class offers:
/// - 🔄 Simplified state management with custom emit methods
/// - 📊 Built-in state change logging capabilities
/// - 🛡️ Consistent state update patterns across the app
/// - 🧩 Extensible foundation for complex state management scenarios
///
/// Example usage:
/// ```dart
/// class CounterCubit extends BaseViewModelCubit<int> {
///   CounterCubit() : super(0);
///
///   void increment() => stateChanger(state + 1);
///   void decrement() => stateChanger(state - 1);
/// }
/// ```
///
/// Features:
/// - 🎯 Type-safe state management with generics
/// - 🔍 Automatic state change tracking
/// - 🚀 Performance optimized with Cubit's reactive architecture
/// - 🧪 Testing-friendly with controlled state updates
abstract class BaseViewModelCubit<S> extends Cubit<S> {
  /// Creates a new [BaseViewModelCubit] instance with the initial state.
  ///
  /// The [state] parameter represents the initial state value that will be
  /// emitted when the cubit is first created.
  BaseViewModelCubit(super.state);

  /// 🔄 Setter for updating the current state value.
  ///
  /// This provides a convenient way to update the state using assignment syntax.
  /// Internally uses the Cubit's emit method to notify listeners of state changes.
  ///
  /// Example:
  /// ```dart
  /// cubit.stateCurrentValue = newStateValue;
  /// ```
  set stateCurrentValue(S value) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(value);
  }

  /// 🔄 Method for changing the current state to a new value.
  ///
  /// This is the primary method for updating state in Cubit-based view models.
  /// It emits the new state and notifies all listeners of the change.
  ///
  /// Parameters:
  /// - [state]: The new state value to emit
  ///
  /// Example:
  /// ```dart
  /// cubit.stateChanger(MyState.loaded(data));
  /// ```
  void stateChanger(S state) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(state);
  }

  /// 📊 Override of the onChange method to provide custom state change handling.
  ///
  /// This method is called whenever the state changes, allowing for:
  /// - 📝 Logging state transitions
  /// - 🔍 Debugging state changes
  /// - 📈 Analytics tracking
  /// - 🛡️ State validation
  ///
  /// The commented logging code shows how you can implement state change logging:
  /// ```dart
  /// _logger.printBaseViewModelQubitLogs([
  ///   "Before: ${change.currentState}",
  ///   "After: ${change.nextState}"
  /// ]);
  /// ```
  ///
  /// Parameters:
  /// - [change]: Contains the previous and next state values
  @override
  void onChange(Change<S> change) {
    try {
      debugPrint('🔄 State Change Detected');
      debugPrint('📊 Previous State: ${change.currentState}');
      debugPrint('📈 Next State: ${change.nextState}');
      debugPrint('⏰ Timestamp: ${DateTime.now().toIso8601String()}');
    } catch (e, stack) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: e,
        stack: stack,
        library: 'base_view_model_cubit.dart',
        context: ErrorDescription('Error while logging onChange'),
      ));
    }
    super.onChange(change);
  }
}
