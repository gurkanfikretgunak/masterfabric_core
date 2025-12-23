# MasterFabric Core Example App

This example app demonstrates how to use the `masterfabric_core` package in a Flutter application.

## Features Demonstrated

### 1. **MasterApp Setup**
- Initialization with `MasterApp.runBefore()`
- Router configuration with GoRouter
- App configuration from assets

### 2. **MasterViewCubit Pattern**
- Creating views that extend `MasterViewCubit`
- State management with Cubit pattern
- Loading, error, and success states

### 3. **Helper Utilities**
- `DeviceInfoHelper` - Get device information
- `LocalStorageHelper` - Store and retrieve data
- `AssetConfigHelper` - Load configuration from assets

### 4. **Pre-built Views**
- `SplashView` - App launch screen
- `AuthView` - Authentication screen
- `OnboardingView` - User onboarding
- `ErrorHandlingView` - Error display
- `EmptyView` - Empty state display

## Project Structure

```
example/
├── lib/
│   ├── main.dart                    # App entry point
│   ├── app/
│   │   └── routes.dart              # Route definitions
│   └── features/
│       ├── home/
│       │   ├── home_view.dart        # Home view example
│       │   └── cubit/
│       │       ├── home_cubit.dart   # Home cubit
│       │       └── home_state.dart   # Home state
│       ├── products/
│       │   ├── products_view.dart    # Products view example
│       │   ├── cubit/
│       │   │   ├── products_cubit.dart
│       │   │   └── products_state.dart
│       │   └── models/
│       │       └── product.dart      # Product model
│       └── profile/
│           ├── profile_view.dart     # Profile view example
│           └── cubit/
│               ├── profile_cubit.dart
│               └── profile_state.dart
└── assets/
    └── app_config.json               # App configuration
```

## Usage Patterns

### Creating a View

```dart
class MyView extends MasterViewCubit<MyCubit, MyState> {
  final void Function(String) goRoute;

  MyView({
    super.key,
    required this.goRoute,
  }) : super(
    currentView: MasterViewCubitTypes.content,
    viewModel: MyCubit(),
  );

  @override
  Future<void> initialContent(MyCubit viewModel, BuildContext context) async {
    // Load initial data
    await viewModel.loadData();
  }

  @override
  Widget viewContent(BuildContext context, MyCubit viewModel, MyState state) {
    // Build your UI here
    return Container();
  }
}
```

### Creating a Cubit

```dart
class MyCubit extends BaseViewModelCubit<MyState> {
  MyCubit() : super(const MyState.initial());

  Future<void> loadData() async {
    stateChanger(const MyState.loading());
    
    try {
      // Your logic here
      stateChanger(const MyState.loaded());
    } catch (e) {
      stateChanger(MyState.error(errorMessage: e.toString()));
    }
  }
}
```

### Using Helpers

```dart
// Device Info
final deviceInfo = DeviceInfoHelper.instance;
final platform = await deviceInfo.getPlatform();

// Local Storage
await LocalStorageHelper.setString('key', 'value');
final value = await LocalStorageHelper.getString('key');

// Asset Config
final configHelper = AssetConfigHelper();
await configHelper.loadConfig('assets/app_config.json');
final appName = configHelper.getString('appSettings.appName');
```

## Running the Example

1. Navigate to the example directory:
```bash
cd example
```

2. Get dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Key Concepts

### State Management
- Uses `flutter_bloc` with Cubit pattern
- States extend `Equatable` for comparison
- Use `stateChanger` instead of `emit` in cubits

### Navigation
- Uses `go_router` for navigation
- Routes defined in `AppRoutes.createRouter()`
- Views receive `goRoute` callback for navigation

### Configuration
- App configuration loaded from `assets/app_config.json`
- Configuration accessed via `AssetConfigHelper`
- Supports fallback to default values

## Learn More

For more information about the masterfabric_core package, see:
- [Package README](../README.md)
- [CHANGELOG](../CHANGELOG.md)
- [Documentation](../doc/analysis.md)

