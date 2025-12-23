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
- **AppBar configuration** - Custom AppBars with actions

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
  MyView({
    super.key,
    required Function(String) goRoute,
  }) : super(
    currentView: MasterViewCubitTypes.content,
    goRoute: goRoute,
    // Optional: Add AppBar with back button
    coreAppBar: (context, viewModel) {
      final canPop = GoRouter.of(context).canPop();
      return AppBar(
        title: const Text('My View'),
        // Show back button only if we can navigate back
        leading: canPop
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => GoRouter.of(context).pop(),
                tooltip: 'Back',
              )
            : null,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => viewModel.loadData(),
            tooltip: 'Refresh',
          ),
        ],
      );
    },
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
await LocalStorageHelper.setString('key', 'value'); // setString is async
final value = LocalStorageHelper.getString('key'); // getString is synchronous

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

### AppBar Features
- Custom AppBars using `coreAppBar` parameter
- AppBar actions that interact with the view model
- Dynamic AppBar titles and icons
- **Back button navigation** - Automatically shows back button when `canPop()` is true
- Example: HomeView has refresh action, ProductsView and ProfileView have back button and action buttons

### Configuration
- App configuration loaded from `assets/app_config.json`
- Configuration accessed via `AssetConfigHelper`
- Supports fallback to default values

## Learn More

For more information about the masterfabric_core package, see:
- [Package README](../README.md)
- [CHANGELOG](../CHANGELOG.md)
- [Documentation](../doc/analysis.md)

