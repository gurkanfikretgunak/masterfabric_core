import '../../context/template_context.dart';

/// Templates for `.cursor/` and `.cursor-plugin/` directories.
///
/// Rules, agents, skills, and MCP config are static (generic MasterFabric
/// conventions). Only plugin.json and AGENTS.md need project-specific values.
class CursorTemplates {
  CursorTemplates._();

  // ---------------------------------------------------------------------------
  // .cursor-plugin/plugin.json
  // ---------------------------------------------------------------------------

  static String pluginJson(TemplateContext ctx) => '''
{
  "name": "${ctx.projectName}",
  "displayName": "${ctx.projectNamePascal}",
  "version": "1.0.0",
  "description": "MasterFabric project: MVVM+BLoC, Injectable, Master View patterns",
  "keywords": ["flutter", "bloc", "cubit", "mvvm", "masterfabric", "dart", "architecture"],
  "license": "MIT",
  "rules": ".cursor/rules",
  "agents": ".cursor/agents",
  "skills": ".cursor/skills",
  "mcp": ".cursor/mcp/mcp.json"
}
''';

  // ---------------------------------------------------------------------------
  // .cursor/mcp/mcp.json
  // ---------------------------------------------------------------------------

  static String mcpJson() => '{"mcpServers":{"dart":{"command":"dart","args":["mcp-server"]}}}\n';

  // ---------------------------------------------------------------------------
  // .cursor/AGENTS.md  (adapted for consumer projects)
  // ---------------------------------------------------------------------------

  static String agentsMd(TemplateContext ctx) => '''
# AGENTS.md - ${ctx.projectNamePascal} Development Guide

This guide is for AI coding agents working in the `${ctx.projectName}` Flutter project.

---

## Project Overview

**Package**: `${ctx.projectName}`
**Type**: Flutter application using masterfabric_core
**Architecture**: MVVM + BLoC/Cubit via MasterFabric base classes
**Dart SDK**: ^3.9.2

---

## Build, Lint & Test Commands

### Dependencies
```bash
flutter pub get
```

### Code Generation
```bash
dart run build_runner build --delete-conflicting-outputs
dart run build_runner watch --delete-conflicting-outputs
```

### Linting
```bash
dart analyze
dart format .
```

### Running
```bash
flutter run
flutter run -d chrome
```

---

## Architecture Overview

### Core Pattern: MVVM + BLoC/Cubit (via masterfabric_core)

1. **BaseViewModelCubit<S>** - Base cubit with `stateChanger()` method
2. **MasterViewCubit<V, S>** - Complete view system with scaffold, navigation, layout

### View Architecture

Every view follows:

```dart
// 1. State (Equatable + copyWith)
class MyState extends Equatable {
  final MyStatus status;
  final String? errorMessage;
  const MyState({this.status = MyStatus.initial, this.errorMessage});
  MyState copyWith({MyStatus? status, String? errorMessage}) =>
      MyState(status: status ?? this.status, errorMessage: errorMessage ?? this.errorMessage);
  @override
  List<Object?> get props => [status, errorMessage];
}

// 2. Cubit (@injectable + BaseViewModelCubit)
@injectable
class MyCubit extends BaseViewModelCubit<MyState> {
  MyCubit() : super(const MyState());
  void loadData() async {
    stateChanger(state.copyWith(status: MyStatus.loading));
    try {
      stateChanger(state.copyWith(status: MyStatus.success));
    } catch (e) {
      stateChanger(state.copyWith(status: MyStatus.error, errorMessage: e.toString()));
    }
  }
}

// 3. View (MasterViewCubit)
class MyView extends MasterViewCubit<MyCubit, MyState> {
  MyView({required Function(String) goRoute}) : super(goRoute: goRoute, useSafeArea: true);
  @override
  Future<void> initialContent(MyCubit viewModel, BuildContext context) async => viewModel.loadData();
  @override
  Widget viewContent(BuildContext context, MyCubit viewModel, MyState state) => ...;
}
```

### Dependency Injection

Uses **Injectable** + **GetIt**:

```dart
@injectable          // Transient
@lazySingleton       // Singleton (lazy)
@singleton           // Singleton (eager)
```

After changes: `dart run build_runner build --delete-conflicting-outputs`

---

## Code Style Guidelines

### Import Order
1. Dart SDK
2. Flutter SDK
3. Flutter packages (alphabetically)
4. masterfabric_core
5. Relative imports

### Naming
| Type | Convention | Example |
|------|-----------|---------|
| Files | snake_case | `home_view.dart` |
| Classes | PascalCase | `HomeView` |
| Cubits | PascalCase + Cubit | `HomeCubit` |
| States | PascalCase + State | `HomeState` |
| Helpers | PascalCase + Helper | `MyHelper` |

### Error Handling
- Wrap async in try-catch, return safe defaults
- Use emoji logging: debugPrint('\\u{1F680} Init...'), debugPrint('\\u{2705} Success')
- Platform checks before platform-specific code

---

## File Organization

```
lib/
\\u251C\\u2500\\u2500 main.dart
\\u251C\\u2500\\u2500 app/
\\u2502   \\u251C\\u2500\\u2500 app.dart
\\u2502   \\u251C\\u2500\\u2500 di/injection.dart
\\u2502   \\u2514\\u2500\\u2500 routes.dart
\\u251C\\u2500\\u2500 theme/
\\u2502   \\u251C\\u2500\\u2500 app_theme.dart
\\u2502   \\u2514\\u2500\\u2500 theme_builder.dart
\\u2514\\u2500\\u2500 views/
    \\u251C\\u2500\\u2500 home/
    \\u2502   \\u251C\\u2500\\u2500 home_view.dart
    \\u2502   \\u2514\\u2500\\u2500 cubit/
    \\u251C\\u2500\\u2500 profile/
    \\u2514\\u2500\\u2500 settings/
```

### Adding a New View
1. Create `lib/views/[feature]/[feature]_view.dart`
2. Create `lib/views/[feature]/cubit/[feature]_cubit.dart`
3. Create `lib/views/[feature]/cubit/[feature]_state.dart`
4. Register cubit in `lib/app/di/injection.dart`
5. Add route in `lib/app/routes.dart`
6. Run `dart run build_runner build --delete-conflicting-outputs`

---

## Important Conventions

1. **Immutability**: ALL state classes MUST use `copyWith()`
2. **Equatable**: ALL state classes MUST extend Equatable with `props`
3. **Injectable**: Cubits and singletons use `@injectable` or `@lazySingleton`
4. **Null Safety**: Use `?` appropriately, avoid `!`
5. **Platform Checks**: `kIsWeb` or `Platform.isX` before platform-specific code
6. **stateChanger**: Use `stateChanger()` not `emit` for cubit state updates
7. **Const Constructors**: Use wherever possible
8. **Code Generation**: Run `build_runner` after modifying DI annotations or i18n
''';

  // ---------------------------------------------------------------------------
  // .cursor/agents/flutter-architecture.md
  // ---------------------------------------------------------------------------

  static String flutterArchitectureAgent() => r'''---
name: flutter-architecture
description: Flutter architecture specialist for MasterFabric projects. Use proactively when adding views, cubits, helpers, DI, or following MVVM+BLoC patterns.
---

You are a Flutter architecture specialist for a MasterFabric-based project. You deeply understand its MVVM + BLoC/Cubit patterns and conventions.

## When Invoked

1. **Read .cursor/AGENTS.md** first for project conventions, build commands, and architecture
2. Follow existing patterns in `lib/views/`, `lib/app/`, and `lib/theme/`
3. Apply the base-pattern-documentation skill when documenting base classes

## Architecture Checklist

### Adding a New View
- Create `[feature]_view.dart`, `cubit/[feature]_cubit.dart`, `cubit/[feature]_state.dart`
- State: Extend `Equatable`, implement `copyWith()` and `props`
- Cubit: Extend `BaseViewModelCubit<S>`, add `@injectable`
- View: Extend `MasterViewCubit<V, S>`, implement `initialContent()` and `viewContent()`
- Use `stateChanger()` for state updates (not `emit`)

### Adding a New Helper
- Place in `lib/helpers/[helper_name]/`
- Add `@lazySingleton` or `@injectable`
- Use emoji debug logging

### Code Style
- Import order: Dart SDK -> Flutter -> packages -> masterfabric_core -> relative
- Files: `snake_case`; Classes: `PascalCase`; Cubits: `*Cubit`; States: `*State`
- Always use `copyWith()` for immutable state updates
- Platform checks before platform-specific code (`kIsWeb`, `Platform.isX`)

### Code Generation
After DI or i18n changes:
```bash
dart run build_runner build --delete-conflicting-outputs
```

## Output Format

- Be concise and actionable
- Reference specific files when suggesting changes
- Include code snippets that follow project conventions
- Flag any deviations from .cursor/AGENTS.md
''';

  // ---------------------------------------------------------------------------
  // .cursor/skills/base-pattern-documentation/SKILL.md
  // ---------------------------------------------------------------------------

  static String basePatternSkill() => r'''---
name: base-pattern-documentation
description: Creates comprehensive documentation for base pattern skills following Flutter architecture conventions.
---

# Base Pattern Documentation

## Purpose

This skill guides you through creating consistent documentation for base pattern classes and architectural components.

## Documentation Structure

### 1. Header Section

```dart
/// 🌟
/// [ClassName] is a [brief description].
///
/// Example usage:
/// ```dart
/// [Concrete example]
/// ```
///
/// Features:
/// - 🔗 [Feature 1]
/// - 🛡️ [Feature 2]
/// - 🧩 [Feature 3]
class [ClassName] {
```

**Emoji meanings:**
- 🔗 Dependency injection / Integration
- 🛡️ Error handling / Safety
- 🧩 Customization / Flexibility
- 🧬 Lifecycle / State management
- 🎯 Type safety
- 🔍 Logging / Debugging
- 🚀 Performance

### 2. Constructor & Parameter Documentation

```dart
/// Creates a [ClassName].
/// [parameter1] is [description].
const [ClassName]({this.parameter1});
```

### 3. Method Documentation

```dart
/// [Brief description].
/// Returns: [What it returns]
[ReturnType] [methodName]([params]) {
```

## Checklist

- [ ] Clear one-sentence description
- [ ] Complete code example
- [ ] 3-5 key features with emojis
- [ ] All public parameters documented
- [ ] Lifecycle methods documented
- [ ] Extension points clearly marked
''';

  // ---------------------------------------------------------------------------
  // .cursor/rules/ — all 10 rule files (static content)
  // ---------------------------------------------------------------------------

  static final Map<String, String> rules = {
    'create-view.mdc': _ruleCreateView,
    'create-helper.mdc': _ruleCreateHelper,
    'create-config.mdc': _ruleCreateConfig,
    'create-base-widget.mdc': _ruleCreateBaseWidget,
    'create-components-with-base.mdc': _ruleCreateComponentsWithBase,
    'create-analyze.mdc': _ruleCreateAnalyze,
    'documentation-style.mdc': _ruleDocumentationStyle,
    'error-handling.mdc': _ruleErrorHandling,
    'masterfabric-conventions.mdc': _ruleMasterfabricConventions,
    'platform-channels.mdc': _rulePlatformChannels,
  };

  static const String _ruleCreateView = r'''---
description: Step-by-step guide to create a new MasterFabric view with State, Cubit, and MasterViewCubit
alwaysApply: false
globs: ["**/*.dart"]
---

# Create View Rule

Use when creating a new feature view in MasterFabric-style projects.

## Directory Structure

```
lib/views/[feature_name]/
├── [feature_name]_view.dart
├── cubit/
│   ├── [feature_name]_cubit.dart
│   └── [feature_name]_state.dart
└── widgets/
```

## Step 1: Create State

```dart
import 'package:equatable/equatable.dart';

enum MyFeatureStatus { initial, loading, success, error }

class MyFeatureState extends Equatable {
  final MyFeatureStatus status;
  final String? errorMessage;
  const MyFeatureState({this.status = MyFeatureStatus.initial, this.errorMessage});
  MyFeatureState copyWith({MyFeatureStatus? status, String? errorMessage}) =>
      MyFeatureState(status: status ?? this.status, errorMessage: errorMessage ?? this.errorMessage);
  @override
  List<Object?> get props => [status, errorMessage];
}
```

## Step 2: Create Cubit

```dart
import 'package:injectable/injectable.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

@injectable
class MyFeatureCubit extends BaseViewModelCubit<MyFeatureState> {
  MyFeatureCubit() : super(const MyFeatureState());
  Future<void> loadData() async {
    stateChanger(state.copyWith(status: MyFeatureStatus.loading));
    try {
      stateChanger(state.copyWith(status: MyFeatureStatus.success));
    } catch (e) {
      stateChanger(state.copyWith(status: MyFeatureStatus.error, errorMessage: e.toString()));
    }
  }
}
```

## Step 3: Create View

```dart
class MyFeatureView extends MasterViewCubit<MyFeatureCubit, MyFeatureState> {
  MyFeatureView({required Function(String) goRoute})
      : super(goRoute: goRoute, useSafeArea: true);
  @override
  Future<void> initialContent(MyFeatureCubit viewModel, BuildContext context) async => viewModel.loadData();
  @override
  Widget viewContent(BuildContext context, MyFeatureCubit viewModel, MyFeatureState state) {
    if (state.status == MyFeatureStatus.loading) return const CircularProgressIndicator();
    return _buildContent(state);
  }
}
```

## Step 4: Register in DI & add route

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Checklist

- [ ] State extends Equatable with copyWith() and props
- [ ] Cubit extends BaseViewModelCubit<S> with @injectable
- [ ] View extends MasterViewCubit<V, S>
- [ ] Use stateChanger() not emit
''';

  static const String _ruleCreateHelper = r'''---
description: How to create helper classes in MasterFabric - utilities, services, @lazySingleton pattern
alwaysApply: false
globs: ["**/*.dart"]
---

# Create Helper Rule

## Directory Structure

```
lib/helpers/[helper_name]/
├── [helper_name]_helper.dart
└── [optional_supporting_files].dart
```

## Patterns

### Stateless Helper
```dart
class MyHelper {
  static String doSomething() => 'result';
}
```

### Singleton Helper
```dart
@lazySingleton
class MyHelper {
  Future<String?> doSomething() async {
    try {
      debugPrint('🔍 MyHelper: Doing something...');
      return result;
    } catch (e) {
      debugPrint('❌ MyHelper: Error: $e');
      return null;
    }
  }
}
```

## DI Annotations

| Use Case | Annotation |
|----------|------------|
| Singleton | `@lazySingleton` |
| Transient | `@injectable` |
| Eager | `@singleton` |

## Checklist

- [ ] Class name ends with `Helper`
- [ ] @lazySingleton or @injectable
- [ ] Try-catch with safe defaults
- [ ] Emoji debug logging
- [ ] Platform checks for native code
''';

  static const String _ruleCreateConfig = r'''---
description: Configure app via app_config.json - AssetConfigHelper, nested keys, MasterApp.runBefore
alwaysApply: false
globs: ["**/*.dart", "**/app_config.json"]
---

# Create Config Rule

## Accessing Config

```dart
final configHelper = AssetConfigHelper();
final int duration = configHelper.getInt('splashConfiguration.durationSeconds', 3);
final bool autoNav = configHelper.getBool('splashConfiguration.autoNavigate', true);
final String appName = configHelper.getString('appSettings.appName', 'Default');
```

## Common Sections

| Section | Purpose |
|---------|---------|
| `appSettings` | appName, version, environment |
| `uiConfiguration` | themeMode, fontScale |
| `splashConfiguration` | duration, autoNavigate, style |
| `storageConfiguration` | localStorageType |
| `apiConfiguration` | baseUrl, timeout |

## Checklist

- [ ] Dot notation for nested keys
- [ ] Always provide defaults
- [ ] Config registered in pubspec.yaml assets
''';

  static const String _ruleCreateBaseWidget = r'''---
description: How to create base/reusable widgets in MasterFabric
alwaysApply: false
globs: ["**/*.dart"]
---

# Create Base Widget Rule

## StatelessWidget Pattern

```dart
class MyBaseWidget extends StatelessWidget {
  final Widget child;
  final double? padding;
  const MyBaseWidget({super.key, required this.child, this.padding});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(padding ?? 0), child: child);
  }
}
```

## MasterFabric Base Classes
- `MasterScaffoldWidget` - Full scaffold
- `SpacerVisibility`, `PaddingVisibility` - Layout config
- `GridHelper` - Grid utilities

## Checklist

- [ ] Const constructor when possible
- [ ] super.key in constructor
- [ ] Doc comment with example
''';

  static const String _ruleCreateComponentsWithBase = r'''---
description: Create components that use MasterFabric base classes
alwaysApply: false
globs: ["**/*.dart"]
---

# Create Components With Base Rule

## Base Classes

| Base Class | Use For |
|------------|---------|
| `MasterViewCubit<V, S>` | Full-screen views |
| `BaseViewModelCubit<S>` | Cubits / view models |
| `LoadingView`, `ErrorHandlingView`, `EmptyView` | Pre-built state UIs |

## Pre-built Views

```dart
if (state.status == MyStatus.loading) return const LoadingView();
if (state.status == MyStatus.error) return ErrorHandlingView(error: state.errorMessage);
if (state.items?.isEmpty ?? true) return EmptyView(message: 'No items');
```

## Checklist

- [ ] Extend correct base class
- [ ] Use pre-built views for loading/error/empty
- [ ] BlocBuilder/buildWhen to avoid unnecessary rebuilds
''';

  static const String _ruleCreateAnalyze = r'''---
description: Run Dart/Flutter analysis, format, and fix
alwaysApply: false
globs: ["**/*.dart", "**/pubspec.yaml"]
---

# Create Analyze Rule

## Commands

```bash
dart analyze                # Static analysis
dart format .               # Format code
dart format --set-exit-if-changed .  # CI check
dart run build_runner build --delete-conflicting-outputs  # Code gen
flutter pub get             # After pubspec changes
```

## Workflow

1. Make changes
2. `dart analyze` - fix issues
3. `dart format .` - format
4. `build_runner` if DI/i18n changed
5. `flutter pub get` if deps changed

## Checklist

- [ ] dart analyze passes
- [ ] dart format applied
- [ ] build_runner run if needed
''';

  static const String _ruleDocumentationStyle = r'''---
description: Emoji-rich documentation style for MasterFabric projects
alwaysApply: false
globs: ["**/*.dart"]
---

# Documentation Style Rule

## Class Documentation

```dart
/// 🚀 **MyView**
///
/// This view displays [description].
///
/// Features:
/// - 🔄 Auto-refresh
/// - 📊 Real-time data
/// - ❌ Error handling
///
/// {@category Views}
class MyView extends MasterViewCubit<MyCubit, MyState> {
```

## Emoji Conventions

| Emoji | Meaning |
|-------|---------|
| 🚀 | Initialization |
| ✅ | Success |
| ❌ | Error |
| ⚠️ | Warning |
| 🔍 | Debug |
| 📊 | Data |
| 🔄 | State change |
| 🧭 | Navigation |
| 💾 | Storage |
| 🔐 | Security |

## Debug Logging

```dart
debugPrint('🚀 Initializing...');
debugPrint('✅ Success');
debugPrint('❌ Error: $error');
```

## Checklist

- [ ] Emoji in first line for classes
- [ ] Features list with emojis
- [ ] All public parameters documented
''';

  static const String _ruleErrorHandling = r'''---
description: Error handling patterns for MasterFabric projects
alwaysApply: false
globs: ["**/*.dart"]
---

# Error Handling Rule

## Pattern 1: Try-Catch

```dart
Future<String?> loadData() async {
  try {
    debugPrint('🔍 Loading...');
    final result = await fetchData();
    debugPrint('✅ Loaded');
    return result;
  } catch (e) {
    debugPrint('❌ Error: $e');
    return null;
  }
}
```

## Pattern 2: Platform-Safe

```dart
if (kIsWeb) { debugPrint('⚠️ Not available on web'); return null; }
```

## Pattern 3: State-Based (Cubits)

```dart
stateChanger(state.copyWith(status: MyStatus.loading));
try {
  stateChanger(state.copyWith(status: MyStatus.success, data: data));
} catch (e) {
  stateChanger(state.copyWith(status: MyStatus.error, errorMessage: e.toString()));
}
```

## Checklist

- [ ] Wrap async in try-catch
- [ ] Return safe defaults
- [ ] Emoji logging
- [ ] Platform check before native code
''';

  static const String _ruleMasterfabricConventions = r'''---
description: MasterFabric Core conventions - MVVM+BLoC, naming, state management, DI
alwaysApply: false
globs: ["**/*.dart"]
---

# MasterFabric Core Conventions

## Import Order
1. Dart SDK
2. Flutter SDK
3. Packages (alphabetically)
4. masterfabric_core
5. Relative imports

## Naming
| Type | Convention |
|------|-----------|
| Files | snake_case |
| Classes | PascalCase |
| Cubits | PascalCase + Cubit |
| States | PascalCase + State |

## State: Equatable + copyWith + props
## Cubits: BaseViewModelCubit + @injectable + stateChanger()
## Views: MasterViewCubit + initialContent + viewContent

## Key Conventions
1. Immutability: copyWith()
2. Equatable: props
3. Injectable: @injectable / @lazySingleton
4. Null safety: avoid `!`
5. Platform checks: kIsWeb
6. stateChanger() not emit
7. Const constructors
''';

  static const String _rulePlatformChannels = r'''---
description: Native iOS/Android integration via platform channels
alwaysApply: false
globs: ["**/*.dart", "**/*.swift", "**/*.kt"]
---

# Platform Channels Rule

## Architecture
- **Dart**: MethodChannel invokes native methods
- **iOS**: FlutterMethodChannel in Swift
- **Android**: MethodChannel in Kotlin

## Dart Side

```dart
class MyNativeHelper {
  static const _channel = MethodChannel('com.masterfabric.my_feature');
  Future<bool> callNative() async {
    try {
      final result = await _channel.invokeMethod<bool>('methodName');
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('❌ ${e.code}: ${e.message}');
      return false;
    }
  }
}
```

## Platform Checks

```dart
if (kIsWeb) return null;
```

## Checklist
- [ ] Channel name: com.masterfabric.[feature]
- [ ] Handle PlatformException
- [ ] kIsWeb check
- [ ] iOS: Info.plist usage descriptions
- [ ] Android: AndroidManifest permissions
''';
}
