# AGENTS.md - MasterFabric Core Development Guide

This guide is for AI coding agents working in the `masterfabric_core` Flutter package.

---

## Project Overview

**Package**: `masterfabric_core` v1.0.0  
**Type**: Flutter plugin package (iOS/Android/Web support)  
**Purpose**: Comprehensive Flutter package providing core utilities, base classes, and shared logic for building scalable applications  
**License**: AGPL-3.0  
**Repository**: https://github.com/gurkanfikretgunak/masterfabric_core  
**Pub.dev**: https://pub.dev/packages/masterfabric_core  
**Dart SDK**: ^3.9.2  
**Flutter**: >=1.17.0

---

## Build, Lint & Test Commands

### Dependencies
```bash
flutter pub get              # Install dependencies
flutter packages get         # Alternative command
```

### Code Generation
```bash
# Generate code for DI (Injectable) and i18n (Slang)
dart run build_runner build --delete-conflicting-outputs

# Watch mode for automatic regeneration
dart run build_runner watch --delete-conflicting-outputs
```

### Linting
```bash
dart analyze                 # Run Dart static analysis
flutter analyze              # Run Flutter-specific analysis
dart format .                # Format all Dart files
dart format --set-exit-if-changed .  # Check formatting (CI)
```

### Testing
**⚠️ NOTE**: This package currently has NO test directory. Tests would typically be in `test/` or `example/test/`.

```bash
# When tests exist, use these commands:
flutter test                              # Run all tests
flutter test test/specific_test.dart      # Run single test file
flutter test --coverage                   # Generate coverage report
flutter test --watch                      # Watch mode
```

### Building
```bash
flutter build apk            # Build Android APK
flutter build ios            # Build iOS app
flutter build web            # Build web app
flutter pub publish --dry-run  # Validate package for publishing
```

### Running Example App
```bash
cd example
flutter run                  # Run on connected device/emulator
flutter run -d chrome        # Run on Chrome (web)
flutter run -d macos         # Run on macOS
```

---

## Architecture Overview

### Core Pattern: MVVM + BLoC/Cubit

The package uses a **Master View System** built on Flutter BLoC with custom base classes:

1. **BaseViewModelCubit<S>** - Base cubit with custom state management
2. **BaseViewCubit<V, S>** - Lifecycle wrapper with GetIt DI integration
3. **MasterViewCubit<V, S>** - Complete view system with scaffold, navigation, and layout

### View Architecture

Every view follows this pattern:

```dart
// 1. Define State (Equatable for value equality)
class MyState extends Equatable {
  final MyStatus status;
  final String? errorMessage;
  
  const MyState({
    this.status = MyStatus.initial,
    this.errorMessage,
  });
  
  MyState copyWith({MyStatus? status, String? errorMessage}) {
    return MyState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
  
  @override
  List<Object?> get props => [status, errorMessage];
}

// 2. Define Cubit (Injectable for DI)
@injectable
class MyCubit extends BaseViewModelCubit<MyState> {
  MyCubit() : super(const MyState());
  
  void loadData() async {
    stateChanger(state.copyWith(status: MyStatus.loading));
    try {
      // Load data
      stateChanger(state.copyWith(status: MyStatus.success));
    } catch (e) {
      stateChanger(state.copyWith(
        status: MyStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}

// 3. Define View (MasterViewCubit)
class MyView extends MasterViewCubit<MyCubit, MyState> {
  MyView({required Function(String) goRoute})
      : super(
          goRoute: goRoute,
          useSafeArea: true,
          horizontalPadding: const PaddingVisibility.enabled(),
        );

  @override
  Future<void> initialContent(MyCubit viewModel, BuildContext context) async {
    // Called once when view initializes
    viewModel.loadData();
  }

  @override
  Widget viewContent(BuildContext context, MyCubit viewModel, MyState state) {
    // Build UI based on state
    return Column(
      children: [
        Text('Status: ${state.status}'),
        if (state.errorMessage != null) Text('Error: ${state.errorMessage}'),
      ],
    );
  }
}
```

### Dependency Injection

Uses **Injectable** + **GetIt**:

```dart
// 1. Annotate classes
@injectable          // Transient (new instance each time)
@lazySingleton       // Singleton (lazy initialization)
@singleton           // Singleton (eager initialization)

// 2. Generate code
// Run: dart run build_runner build

// 3. Configure in main.dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await MasterApp.runBefore(
    assetConfigPath: 'assets/app_config.json',
    hydrated: true,
  );
  
  configureDependencies();  // Initialize GetIt
  
  runApp(MyApp());
}

// 4. Use in code
final service = GetIt.I<MyService>();
```

---

## Code Style Guidelines

### 1. Import Organization

**Order imports in this exact sequence:**

```dart
// 1. Dart SDK
import 'dart:async';
import 'dart:io';

// 2. Flutter SDK
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

// 3. Flutter packages (alphabetically)
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:go_router/go_router.dart';

// 4. This package (masterfabric_core)
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core/src/core.dart';

// 5. Relative imports (same module)
import '../widgets/my_widget.dart';
import 'my_cubit.dart';
import 'my_state.dart';
```

### 2. Naming Conventions

| Type | Convention | Example |
|------|-----------|---------|
| **Files** | `snake_case` | `splash_view.dart`, `local_storage_helper.dart` |
| **Classes** | `PascalCase` | `SplashView`, `LocalStorageHelper`, `BaseViewModelCubit` |
| **Cubits** | `PascalCase` + `Cubit` suffix | `SplashCubit`, `HomeCubit`, `AuthCubit` |
| **States** | `PascalCase` + `State` suffix | `SplashState`, `HomeState`, `AuthState` |
| **Helpers** | `PascalCase` + `Helper` suffix | `NetworkInfoHelper`, `DateTimeHelper` |
| **Variables** | `camelCase` | `viewModel`, `errorMessage`, `isLoading` |
| **Private** | `_camelCase` | `_prefs`, `_logger`, `_buildWidget()` |
| **Constants** | `camelCase` or `SCREAMING_SNAKE_CASE` | `defaultPadding`, `MAX_RETRIES` |
| **Enums** | `PascalCase` (class), `camelCase` (values) | `enum MyStatus { initial, loading, success }` |

### 3. Documentation Style

**Use emoji-rich documentation** (project convention):

```dart
/// 🚀 **MyView**
///
/// This view displays...
///
/// Features:
/// - 🔄 Auto-refresh
/// - 📊 Real-time data
/// - ❌ Error handling
///
/// {@category Views}
/// {@subCategory Home}
class MyView extends MasterViewCubit<MyCubit, MyState> {
  // ...
}
```

**Debug logging with emojis:**

```dart
debugPrint('🚀 Initializing view...');
debugPrint('✅ Data loaded successfully');
debugPrint('❌ Error: $error');
debugPrint('⚠️ Warning: slow network');
debugPrint('🔍 Debug: state = $state');
debugPrint('📊 Info: ${items.length} items');
```

**Common emoji conventions:**
- 🚀 Initialization/Start
- ✅ Success
- ❌ Error
- ⚠️ Warning
- 🔍 Debug info
- 📊 Data/Statistics
- 🔄 State change
- 🧭 Navigation
- 📱 Device/Platform
- 🌐 Network
- 💾 Storage
- 🔐 Security/Permissions

### 4. Type System

**Always use explicit types:**

```dart
// ✅ Good
final String name = 'John';
final List<String> items = [];
final Map<String, dynamic> config = {};

// ❌ Avoid
var name = 'John';  // Type inference okay for obvious cases
```

**Null safety:**

```dart
// Nullable types
String? nullableString;
final int? maybeNumber;

// Non-nullable with default
final String name;
final int count = 0;

// Null-aware operators
config?.value ?? 'default'
list?.isEmpty ?? true
name ?? 'Unknown'
```

**Generics:**

```dart
// Base classes use generics extensively
abstract class BaseViewModelCubit<S> extends Cubit<S> { }
class MasterViewCubit<V extends BaseViewModelCubit<S>, S> extends StatelessWidget { }

// Custom generic classes
class Result<T> {
  final T? data;
  final String? error;
}
```

**Type aliases:**

```dart
typedef OnViewModelReadyCubit<V> = void Function(V viewModel);
typedef BuilderConditionCubit<S> = bool Function(S? previous, S? current);
```

**Record types (Dart 3+):**

```dart
final permissions = <({PermissionType permission, bool isOptional})>[];
permissions.add((permission: PermissionType.camera, isOptional: false));
```

### 5. Error Handling

**Pattern 1: Try-catch with debug logging**

```dart
Future<String?> loadData() async {
  try {
    debugPrint('🔍 Loading data...');
    final result = await fetchData();
    debugPrint('✅ Data loaded successfully');
    return result;
  } catch (e) {
    debugPrint('❌ Error loading data: $e');
    return null;  // Return safe default
  }
}
```

**Pattern 2: Platform-safe operations**

```dart
Future<String?> getWifiName() async {
  // Always check platform before platform-specific code
  if (kIsWeb) {
    debugPrint('⚠️ WiFi info not available on web');
    return null;
  }
  
  try {
    return await NetworkInfo().getWifiName();
  } catch (e) {
    debugPrint('❌ Error getting WiFi name: $e');
    return null;
  }
}
```

**Pattern 3: State-based error handling**

```dart
void loadData() async {
  stateChanger(state.copyWith(status: MyStatus.loading));
  
  try {
    final data = await repository.fetchData();
    stateChanger(state.copyWith(
      status: MyStatus.success,
      data: data,
    ));
  } catch (e) {
    stateChanger(state.copyWith(
      status: MyStatus.error,
      errorMessage: e.toString(),
    ));
  }
}
```

**Pattern 4: FlutterError for critical errors**

```dart
try {
  // critical operation
} catch (e, stack) {
  FlutterError.reportError(FlutterErrorDetails(
    exception: e,
    stack: stack,
    library: 'my_file.dart',
    context: ErrorDescription('Error doing X'),
  ));
}
```

### 6. State Management Patterns

**Immutable state with copyWith:**

```dart
class MyState extends Equatable {
  final MyStatus status;
  final String? data;
  final String? error;
  
  const MyState({
    this.status = MyStatus.initial,
    this.data,
    this.error,
  });
  
  // ALWAYS implement copyWith for immutable updates
  MyState copyWith({
    MyStatus? status,
    String? data,
    String? error,
  }) {
    return MyState(
      status: status ?? this.status,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }
  
  // ALWAYS implement props for Equatable
  @override
  List<Object?> get props => [status, data, error];
}
```

**Cubit state updates:**

```dart
@injectable
class MyCubit extends BaseViewModelCubit<MyState> {
  MyCubit() : super(const MyState());
  
  // Use stateChanger() method (custom to this package)
  void updateStatus(MyStatus status) {
    stateChanger(state.copyWith(status: status));
  }
  
  // Or use stateCurrentValue setter
  void setError(String error) {
    stateCurrentValue = state.copyWith(error: error);
  }
}
```

### 7. File Organization

```
lib/
├── masterfabric_core.dart       # Main export file (public API)
└── src/
    ├── core.dart                # Internal exports
    ├── base/                    # Base classes & architecture
    │   ├── base_view_cubit.dart
    │   ├── base_view_model_cubit.dart
    │   ├── master_view/
    │   ├── master_view_cubit/
    │   ├── master_view_hydrated_cubit/
    │   └── widgets/
    ├── views/                   # Pre-built views
    │   ├── splash/
    │   ├── onboarding/
    │   ├── auth/
    │   ├── permissions/
    │   ├── account/
    │   ├── empty_view/
    │   ├── error_handling/
    │   ├── image_detail/
    │   ├── info_bottom_sheet/
    │   ├── loading/
    │   ├── search/
    │   └── routes.dart
    ├── helper/                  # Utility helpers
    │   ├── local_storage/
    │   │   ├── local_storage_helper.dart
    │   │   ├── hive_ce_storage_helper.dart
    │   │   └── local_storage_type.dart
    │   ├── permission_helper/   # Platform channels (no Dart package)
    │   ├── push_notification_helper/
    │   ├── app_tracking_transparency_helper/
    │   ├── force_update/
    │   ├── skeleton/
    │   ├── web_viewer/
    │   ├── network_info_helper.dart
    │   ├── run_before_feature.dart
    │   ├── network_init_feature.dart
    │   └── ...
    ├── models/                  # Data models
    │   ├── splash_models.dart
    │   ├── onboarding_models.dart
    │   └── ...
    ├── layout/                  # Layout utilities
    │   ├── grid/
    │   └── spacer/
    ├── resources/               # Generated i18n files
    │   └── resources.g.dart
    └── di/config/               # Dependency injection
        ├── injection.dart
        └── onboarding_module.dart
```

**When creating new features:**

1. **New View**: Place in `lib/src/views/[feature_name]/`
   - `[feature_name]_view.dart` - View class
   - `cubit/[feature_name]_cubit.dart` - Business logic
   - `cubit/[feature_name]_state.dart` - State class
   - `widgets/` - Feature-specific widgets

2. **New Helper**: Place in `lib/src/helper/`
   - `[helper_name]_helper.dart`
   - Add `@lazySingleton` if stateful
   - Export in `lib/src/core.dart`

3. **New Model**: Place in `lib/src/models/`
   - `[model_name]_models.dart`
   - Export in `lib/src/core.dart`

---

## Common Tasks

### Adding a New View

```bash
# 1. Create directory structure
mkdir -p lib/src/views/my_feature/cubit
mkdir -p lib/src/views/my_feature/widgets

# 2. Create files
touch lib/src/views/my_feature/my_feature_view.dart
touch lib/src/views/my_feature/cubit/my_feature_cubit.dart
touch lib/src/views/my_feature/cubit/my_feature_state.dart

# 3. Implement state, cubit, view (see Architecture section)

# 4. Add @injectable to cubit

# 5. Generate DI code
dart run build_runner build --delete-conflicting-outputs

# 6. Export in lib/src/core.dart (if needed internally)
# Or export in lib/masterfabric_core.dart (if public API)
```

### Adding a New Helper

```dart
// 1. Create file: lib/src/helper/my_helper.dart

import 'package:injectable/injectable.dart';

/// 🛠️ MyHelper
///
/// Description of what this helper does
@lazySingleton  // or @injectable
class MyHelper {
  // Implementation
  
  Future<String?> doSomething() async {
    try {
      debugPrint('🔍 MyHelper: Doing something...');
      // logic
      debugPrint('✅ MyHelper: Success');
      return result;
    } catch (e) {
      debugPrint('❌ MyHelper: Error: $e');
      return null;
    }
  }
}

// 2. Run build_runner
// dart run build_runner build --delete-conflicting-outputs

// 3. Export in lib/src/core.dart
// export 'helper/my_helper.dart';

// 4. Use via DI
// final helper = GetIt.I<MyHelper>();
```

### Adding Localization

```bash
# 1. Edit translation file
# assets/i18n/en.i18n.json

{
  "welcome": "Welcome",
  "hello": "Hello {name}"
}

# 2. Generate code
dart run build_runner build --delete-conflicting-outputs

# 3. Use in code
import 'package:masterfabric_core/src/resources/resources.g.dart';

Text(resources.welcome)
Text(resources.hello(name: 'John'))
```

### Configuration via app_config.json

```json
{
  "splashConfiguration": {
    "durationSeconds": 3,
    "autoNavigate": true,
    "style": "startup"
  },
  "storageConfiguration": {
    "localStorageType": "hiveCe"
  },
  "permissionsConfiguration": {
    "requestOnStartup": false,
    "requiredPermissions": [],
    "optionalPermissions": [],
    "permissionDescriptions": { "camera": "To capture photos" }
  }
}
```

Access in code:

```dart
final configHelper = AssetConfigHelper();
final duration = configHelper.getInt('splashConfiguration.durationSeconds', 3);
final autoNav = configHelper.getBool('splashConfiguration.autoNavigate', true);
```

---

## Important Conventions

1. **Immutability**: ALL state classes MUST use `copyWith()` for updates
2. **Equatable**: ALL state classes MUST extend `Equatable` and implement `props`
3. **Injectable**: ALL cubits and singleton services MUST use `@injectable` or `@lazySingleton`
4. **Null Safety**: Use nullable types (`?`) appropriately, avoid `!` operator
5. **Platform Checks**: ALWAYS check `kIsWeb` or `Platform.isX` before platform-specific code
6. **Emoji Logging**: Use emoji prefixes in debug prints (🚀 ✅ ❌ ⚠️ 🔍 📊)
7. **Documentation**: Add emoji-rich doc comments for public APIs
8. **Error Handling**: Wrap async operations in try-catch, return safe defaults
9. **Const Constructors**: Use `const` constructors wherever possible
10. **Code Generation**: Run `build_runner` after modifying DI annotations or i18n

---

## Key Dependencies

### State Management
- `flutter_bloc: ^9.1.0` - BLoC/Cubit pattern
- `hydrated_bloc: ^10.1.1` - State persistence
- `equatable: ^2.0.7` - Value equality

### Dependency Injection
- `injectable: ^2.7.1` - DI annotations
- `get_it: ^8.3.0` - Service locator

### Navigation
- `go_router: ^15.1.1` - Routing

### Localization
- `slang: ^4.11.1` - Type-safe i18n
- `slang_flutter: ^4.11.0` - Flutter integration

### Storage
- `shared_preferences: ^2.5.3` - Key-value storage
- `hive_ce: ^2.16.0` - NoSQL database
- `sqflite: ^2.4.2` - SQLite

### Networking
- `dio: ^5.7.0` - HTTP client
- `connectivity_plus: ^6.1.4` - Connectivity status
- `network_info_plus: ^7.0.0` - WiFi info

### Utilities
- `logger: ^2.5.0` - Logging
- `device_info_plus: ^11.4.0` - Device info
- `package_info_plus: ^8.3.0` - App info
- `url_launcher: ^6.3.1` - URL launching
- `share_plus: ^10.1.4` - Sharing

### UI
- `flutter_svg: ^2.2.3` - SVG rendering
- `flutter_html: ^3.0.0` - HTML rendering
- `flutter_inappwebview: ^6.1.5` - In-app WebView
- `webview_flutter: ^4.10.0` - WebView

### Notifications
- `flutter_local_notifications: ^19.4.2` - Local notifications
- `timezone: ^0.10.1` - Timezone for local notifications
- `onesignal_flutter: ^5.2.8` - OneSignal push (no Firebase FCM in core)

**Linter**: `flutter_lints: ^5.0.0`

---

## Special Features

### MasterApp.runBefore()

Initialize the app before runApp():

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await MasterApp.runBefore(
    assetConfigPath: 'assets/app_config.json',
    hydrated: true,  // Enable state persistence
    requestTrackingTransparency: true,  // iOS ATT
    networkFeatures: {
      NetworkInitFeature.cloudflareTrace,  // IP, location, datacenter via Cloudflare
      NetworkInitFeature.publicIP,         // Public IP via ipify
      NetworkInitFeature.connectivity,    // Connection type
      NetworkInitFeature.wifiInfo,         // WiFi details
    },
    runBeforeFeatures: {
      RunBeforeFeature.permissions,  // Show permission requests
    },
  );
  
  configureDependencies();
  runApp(MyApp());
}
```

### Multi-Backend Storage

Switch storage backend via config:

```json
{
  "storageConfiguration": {
    "localStorageType": "hiveCe"  // or "sharedPreferences"
  }
}
```

### Platform Channels

Native code (no Dart packages for permissions or ATT):
- **iOS**: `ios/Classes/MasterfabricCorePlugin.swift`
- **Android**: `android/src/main/kotlin/com/masterfabric/masterfabric_core/MasterfabricCorePlugin.kt`

Used for: **Permissions** (via `PermissionHelper` + MethodChannel `com.masterfabric.permission_helper`), App Tracking Transparency (ATT)

**PermissionHelper** (no `permission_handler` package):
```dart
final granted = await PermissionHelper.instance.requestPermission(PermissionType.camera);
final isGranted = await PermissionHelper.instance.checkPermission(PermissionType.photos);
await PermissionHelper.instance.openAppSettings();
```

---

## When in Doubt

**Examine existing code:**
- **Views**: `lib/src/views/splash/` - Complete view example
- **Permissions**: `lib/src/views/permissions/` + `lib/src/helper/permission_helper/` - Platform-channel permissions
- **Helpers**: `lib/src/helper/local_storage/` - Helper pattern
- **Base classes**: `lib/src/base/` - Architecture foundation
- **Example app**: `example/lib/` - Real-world usage

**Key principle**: This package provides a complete architecture. Follow existing patterns closely for consistency.
