---
name: base-pattern-documentation
description: Creates comprehensive documentation for base pattern skills following Flutter architecture conventions. Use when documenting new base classes, view patterns, state management patterns, or architectural components that serve as foundations for other code.
---

# Base Pattern Documentation

## Purpose

This skill guides you through creating consistent, comprehensive documentation for base pattern classes and architectural components. Base patterns are foundational classes that other code extends or uses, such as `BaseView`, `BaseViewModel`, `MasterView`, etc.

## Documentation Structure

When documenting a base pattern, follow this structure:

### 1. Header Section

```dart
/// 🌟
/// [ClassName] is a [brief description of what it is and its primary purpose].
/// [Additional context about when and why to use it].
///
/// Example usage:
/// ```dart
/// [Concrete example showing typical usage]
/// ```
///
/// Features:
/// - 🔗 [Feature 1 with emoji]
/// - 🛡️ [Feature 2 with emoji]
/// - 🧩 [Feature 3 with emoji]
/// - 🧬 [Feature 4 with emoji]
class [ClassName] {
```

**Guidelines:**
- Start with 🌟 emoji for base classes
- Provide a clear one-sentence description
- Include a complete, runnable example
- List 3-5 key features with descriptive emojis
- Use consistent emoji meanings:
  - 🔗 Dependency injection / Integration
  - 🛡️ Error handling / Safety
  - 🧩 Customization / Flexibility
  - 🧬 Lifecycle / State management
  - 🎯 Type safety
  - 🔍 Logging / Debugging
  - 🚀 Performance

### 2. Constructor Documentation

```dart
/// Creates a [ClassName] widget/instance.
///
/// [parameter1] is [description of what it does and when to use it].
/// [parameter2] is [description].
/// [parameter3] controls [what it controls].
const [ClassName]({
  this.parameter1,
  this.parameter2,
  this.parameter3,
});
```

**Guidelines:**
- Explain each parameter's purpose
- Mention when parameters are optional vs required
- Describe side effects or behaviors triggered by parameters

### 3. Type Definitions

For complex callback types, document them separately:

```dart
/// 🧑‍💻 Type definition for [purpose].
/// Useful for [use case].
typedef [TypeName] = [Type] Function([Parameters]);
```

**Common patterns:**
- `OnViewModelReady` - Called when view model is ready
- `OnViewModelEnd` - Called during disposal/cleanup
- `OnStateListener` - Reacts to state changes
- `BuilderCondition` - Controls when builder rebuilds

### 4. Method Documentation

```dart
/// [Brief description of what the method does].
/// 
/// Parameters:
/// - [param]: [Description]
/// - [param]: [Description]
/// 
/// Returns: [What it returns]
/// 
/// Throws: [What exceptions it might throw]
[ReturnType] [methodName]([parameters]) {
```

### 5. Lifecycle Methods

For lifecycle hooks, document the sequence:

```dart
/// Called during [lifecycle phase].
/// 
/// Typical use cases:
/// - [Use case 1]
/// - [Use case 2]
/// 
/// Note: [Important behavior or constraint]
@override
void [lifecycleMethod]() {
```

## Documentation Examples

### Example 1: Base View Widget

```dart
/// 🌟
/// BaseView is a generic widget that provides a convenient way to use BLoC and ViewModel patterns together.
/// It handles ViewModel lifecycle, state listening, and error reporting in a single place.
///
/// Example usage:
/// ```dart
/// BaseView<MyBloc, MyEvent, MyState>(
///   onViewModelReady: (bloc, context) => bloc.add(MyInitEvent()),
///   builder: (bloc, context, state) {
///     if (state is MyLoadingState) {
///       return CircularProgressIndicator();
///     }
///     if (state is MyLoadedState) {
///       return Text(state.data);
///     }
///     return SizedBox.shrink();
///   },
/// )
/// ```
///
/// Features:
/// - 🔗 Dependency injection via GetIt
/// - 🛡️ Error handling with FlutterError.reportError
/// - 🧩 Customizable builder, listener, and buildWhen
/// - 🧬 Lifecycle hooks for ViewModel
class BaseView<V extends BaseViewModelBloc<E, S>, E, S> extends StatefulWidget {
```

### Example 2: Base View Model

```dart
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
```

### Example 3: Master View Pattern

```dart
/// MasterView (BLoC-based) — reusable screen scaffold for feature views.
///
/// Purpose
/// - Provide consistent skeleton (app bar, safe area, paddings, footer/navbar spacers)
/// - Host `BaseView<V,E,S>` lifecycle and state listening
/// - Centralize error handling and default snackbars for high-level states
///
/// Extend points
/// - `viewContent(context, viewModel, state)`: render your feature UI
/// - `initialContent(viewModel, context)`: fire first effects (e.g., dispatch init event)
/// - `coreAppBar/coreBottomBar/bottomNavigationBar`: customize chrome
///
/// Example
/// ```dart
/// class ProductsView extends MasterView<MyBloc, MyEvent, MyState> {
///   ProductsView({super.key}) : super(currentView: MasterViewTypes.content);
///
///   @override
///   void initialContent(MyBloc vm, BuildContext context) {
///     vm.add(LoadProducts());
///   }
///
///   @override
///   Widget viewContent(BuildContext context, MyBloc vm, MyState state) {
///     if (state is Loading) return buildLoading();
///     if (state is Failure) return buildError(state.message);
///     return ProductsList(items: state.items);
///   }
/// }
/// ```
abstract class MasterView<V extends BaseViewModelBloc<E, S>, E, S>
    extends StatelessWidget {
```

## Documentation Checklist

When documenting a base pattern, ensure:

- [ ] Clear one-sentence description in header
- [ ] Complete, runnable code example
- [ ] 3-5 key features listed with emojis
- [ ] All public parameters documented
- [ ] Type definitions explained if complex
- [ ] Lifecycle methods documented with use cases
- [ ] Generic type parameters explained
- [ ] Extension points clearly marked (abstract methods, callbacks)
- [ ] Error handling behavior documented
- [ ] Integration points mentioned (DI, state management, etc.)

## Common Patterns to Document

### State Management Patterns
- Base view models (BLoC, Cubit, Hydrated)
- State classes (sealed classes, freezed unions)
- State change handlers

### View Patterns
- Base view widgets
- Master views / Scaffold wrappers
- View builders and composers

### Lifecycle Patterns
- Initialization hooks
- Disposal/cleanup handlers
- State change listeners

### Integration Patterns
- Dependency injection setup
- Error reporting integration
- Navigation helpers

## Anti-Patterns to Avoid

❌ **Vague descriptions**: "A widget that does stuff"
✅ **Specific**: "A generic widget that manages BLoC lifecycle and provides error handling"

❌ **Missing examples**: Documentation without code
✅ **Complete examples**: Runnable code showing typical usage

❌ **Undocumented parameters**: Public API without explanations
✅ **Fully documented**: Every public member explained

❌ **No feature list**: Just description
✅ **Feature highlights**: Key capabilities clearly listed

## When to Use This Skill

Apply this skill when:
- Creating new base classes that others will extend
- Documenting architectural patterns
- Writing foundation classes for state management
- Creating reusable view components
- Establishing new patterns in the codebase

## Additional Resources

For more detailed documentation patterns, see:
- Existing base classes in `lib/src/base/`
- Master view implementations in `lib/src/base/master_view/`
- Analysis documentation in `doc/analysis.md`
