# MasterFabric Core Example App

This example app demonstrates how to use the `masterfabric_core` package in a Flutter application with a clean, soft white design using Lucide icons.

## Design System

The example app features a custom design system:
- **Soft White Theme**: Pure white backgrounds with soft gray accents
- **No Shadows**: All elevations set to 0 for a flat, clean look
- **0.5px Borders**: Subtle borders for definition without heaviness
- **Lucide Icons**: Modern, consistent iconography using `lucide_icons_flutter`

## Features Demonstrated

### 1. **MasterApp Setup**
- Initialization with `MasterApp.runBefore()`
- Router configuration with GoRouter
- App configuration from assets
- Custom theme application

### 2. **MasterViewCubit Pattern**
- Creating views that extend `MasterViewCubit`
- State management with Cubit pattern
- Loading, error, and success states
- **AppBar configuration** - Custom AppBars with Lucide icons

### 3. **Helper Utilities Demonstrations**
Comprehensive interactive demos for all package helpers:
- **DeviceInfoHelper** - Get device information (platform, device ID, manufacturer, model)
- **LocalStorageHelper** - Store and retrieve data (string, int, bool, double)
- **DateTimeHelper** - Format dates and times, relative time calculations
- **UrlLauncherHelper** - Launch URLs, phone, email, SMS
- **PermissionHandlerHelper** - Request runtime permissions
- **ApplicationShareHelper** - Share text and files
- **FileDownloadHelper** - Download files with progress tracking
- **AssetConfigHelper** - Load and access app configuration
- **PackageInfoHelper** - Get app package information

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
│   ├── theme/
│   │   └── app_theme.dart           # Custom theme configuration
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
│       ├── profile/
│       │   ├── profile_view.dart     # Profile view example
│       │   └── cubit/
│       │       ├── profile_cubit.dart
│       │       └── profile_state.dart
│       └── helpers/
│           ├── helpers_hub_view.dart          # Helpers hub
│           ├── device_info_demo_view.dart     # DeviceInfo demo
│           ├── storage_demo_view.dart          # LocalStorage demo
│           ├── datetime_demo_view.dart          # DateTime demo
│           ├── url_launcher_demo_view.dart     # UrlLauncher demo
│           ├── permissions_demo_view.dart      # Permissions demo
│           ├── share_demo_view.dart            # Share demo
│           ├── download_demo_view.dart         # Download demo
│           ├── config_demo_view.dart           # Config demo
│           └── package_info_demo_view.dart     # PackageInfo demo
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
                icon: const Icon(LucideIcons.arrowLeft),
                onPressed: () => GoRouter.of(context).pop(),
                tooltip: 'Back',
              )
            : null,
        actions: [
          IconButton(
            icon: const Icon(LucideIcons.refreshCw),
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

All helpers have interactive demonstrations in the Helpers Hub. Navigate to `/helpers` to explore them.

```dart
// Device Info
final deviceInfo = DeviceInfoHelper.instance;
final platform = await deviceInfo.getPlatform();

// Local Storage
await LocalStorageHelper.setString('key', 'value'); // setString is async
final value = LocalStorageHelper.getString('key'); // getString is synchronous

// DateTime
final formatted = DateTimeHelper.formatDate(DateTime.now());
final relative = DateTimeHelper.getRelativeTime(DateTime.now().subtract(Duration(hours: 2)));

// URL Launcher
await UrlLauncherHelper.launchUrl('https://example.com');
await UrlLauncherHelper.launchPhone('+1234567890');
await UrlLauncherHelper.launchEmail('example@email.com');

// Permissions
final permissionHelper = PermissionHandlerHelper.instance;
final granted = await permissionHelper.requestPermission(Permission.camera);

// Share
await ApplicationShareHelper.shareText('Hello from MasterFabric Core!');

// File Download
final filePath = await FileDownloadHelper.downloadFile(
  'https://example.com/file.pdf',
  'file.pdf',
  onProgress: (received, total) {
    print('Progress: ${(received / total * 100).toStringAsFixed(1)}%');
  },
);

// Asset Config
final configHelper = AssetConfigHelper();
await configHelper.loadConfig('assets/app_config.json');
final appName = configHelper.getString('appSettings.appName');

// Package Info
final packageInfo = PackageInfoHelper.instance;
final appName = await packageInfo.getPackageAppName();
final version = await packageInfo.getPackageVersion();
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
- Dynamic AppBar titles and Lucide icons
- **Back button navigation** - Automatically shows back button when `canPop()` is true
- Example: HomeView has refresh action, ProductsView and ProfileView have back button and action buttons

### Icons
- All icons use `lucide_icons_flutter` package
- Consistent iconography throughout the app
- Common mappings:
  - `Icons.refresh` → `LucideIcons.refreshCw`
  - `Icons.search` → `LucideIcons.search`
  - `Icons.arrow_back` → `LucideIcons.arrowLeft`
  - `Icons.settings` → `LucideIcons.settings`
  - `Icons.person` → `LucideIcons.user`

### Theme
- Custom theme defined in `lib/theme/app_theme.dart`
- Soft white backgrounds with 0.5px borders
- No shadows (elevation: 0)
- Applied globally via Theme widget wrapper

### Configuration
- App configuration loaded from `assets/app_config.json`
- Configuration accessed via `AssetConfigHelper`
- Supports fallback to default values

### Helpers Hub
- Central hub for all helper demonstrations at `/helpers`
- Interactive demos for each helper utility
- Easy navigation to specific helper demos

## Learn More

For more information about the masterfabric_core package, see:
- [Package README](../README.md)
- [CHANGELOG](../CHANGELOG.md)
- [Documentation](../doc/analysis.md)

