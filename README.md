# masterfabric_core

[![pub package](https://img.shields.io/pub/v/masterfabric_core.svg)](https://pub.dev/packages/masterfabric_core)
[![License](https://img.shields.io/badge/license-AGPL--3.0-blue.svg)](LICENSE)

A comprehensive Flutter package providing core utilities, base classes, and shared logic for building scalable Flutter applications. MasterFabric Core serves as the foundational layer for MasterFabric projects, offering a complete architecture with state management, navigation, dependency injection, and pre-built views.

## Features

### 🏗️ Architecture & State Management
- **Base View Classes**: `BaseViewBloc`, `BaseViewCubit`, `BaseViewHydratedCubit` for different state management needs
- **Master View System**: Unified view management with `MasterView`, `MasterViewCubit`, and `MasterViewHydratedCubit`
- **State Persistence**: Hydrated BLoC support for state persistence across app restarts
- **View Models**: Base classes for business logic separation

### 🧭 Navigation & Routing
- **GoRouter Integration**: Pre-configured routing with `AppRoutes`
- **Route Management**: Centralized route definitions and navigation helpers

### 🎨 Pre-built Views
- **SplashView**: App launch screen with loading logic
- **OnboardingView**: User onboarding flow
- **AuthView**: Authentication screen with Sign In/Sign Up tabs
- **AccountView**: User account management screen
- **PermissionsView**: Runtime permission request screens
- **ErrorHandlingView**: Error display and recovery
- **LoadingView**: Loading state views
- **EmptyView**: Empty state views
- **InfoBottomSheetView**: Information bottom sheets
- **ImageDetailView**: Image detail viewer
- **SearchView**: Search functionality interface

### 🛠️ Helper Utilities
- **LocalStorageHelper**: SharedPreferences wrapper for local storage
- **AuthStorageHelper**: Authentication data persistence
- **PermissionHandlerHelper**: Runtime permissions management
- **LocalNotificationHelper**: Local push notifications
- **FileDownloadHelper**: File downloads with progress tracking
- **DateTimeHelper**: Date and time operations and formatting
- **UrlLauncherHelper**: External URL and app launching
- **WebViewerHelper**: HTML/WebView rendering utilities
- **ApplicationShareHelper**: Content sharing functionality
- **DeviceInfoHelper**: Device information retrieval
- **AssetConfigHelper**: JSON config management from assets
- **GridHelper**: Grid layout calculation utilities
- **SpacerHelper**: UI spacing utilities
- **CommonLoggerHelper**: Logging utilities

### 📐 Layout System
- **Grid**: Responsive grid layout system
- **Spacer**: Consistent spacing utilities

### 🔌 Dependency Injection
- **Injectable Integration**: Pre-configured dependency injection setup
- **GetIt Integration**: Service locator pattern support

### 🌍 Localization
- **Slang Integration**: i18n support with Slang
- **Translation Support**: English translation file structure

## Installation

### From pub.dev (Recommended)

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  masterfabric_core: ^0.0.3
```

Then run:

```bash
flutter pub get
```

### From Git (Development)

For the latest development version, you can use:

```yaml
dependencies:
  masterfabric_core:
    git:
      url: https://github.com/gurkanfikretgunak/masterfabric_core.git
      ref: dev  # or use a specific tag/commit
```

Then run:

```bash
flutter pub get
```

## Quick Start

### 1. Setup Your App with MasterApp

```dart
import 'package:flutter/material.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MasterApp(
      // Configure your app here
      title: 'My App',
      // Add your router configuration
    );
  }
}
```

### 2. Create a View with MasterView

```dart
import 'package:masterfabric_core/masterfabric_core.dart';

class ProductsView extends MasterView<ProductsCubit, ProductsState> {
  ProductsView({super.key}) : super(currentView: MasterViewTypes.content);

  @override
  void initialContent(ProductsCubit cubit, BuildContext context) {
    cubit.loadProducts();
  }

  @override
  Widget viewContent(BuildContext context, ProductsCubit cubit, ProductsState state) {
    if (state.isLoading) {
      return LoadingView();
    }
    
    if (state.hasError) {
      return ErrorHandlingView(error: state.error);
    }
    
    return ListView.builder(
      itemCount: state.products.length,
      itemBuilder: (context, index) {
        return ProductItem(product: state.products[index]);
      },
    );
  }
}
```

### 3. Use Pre-built Views

```dart
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:go_router/go_router.dart';

// In your router configuration
GoRoute(
  path: '/auth',
  builder: (context, state) => AuthView(
    goRoute: (path) => context.go(path),
    arguments: state.uri.queryParameters,
  ),
),

GoRoute(
  path: '/onboarding',
  builder: (context, state) => OnboardingView(
    config: onboardingConfig,
    goRoute: (path) => context.go(path),
    arguments: state.uri.queryParameters,
  ),
),
```

### 4. Use Helper Utilities

```dart
import 'package:masterfabric_core/masterfabric_core.dart';

// Local Storage
final storage = LocalStorageHelper();
await storage.setString('key', 'value');
final value = await storage.getString('key');

// Permissions
final permissionHelper = PermissionHandlerHelper();
final granted = await permissionHelper.requestPermission(Permission.camera);

// Date Formatting
final formatted = DateTimeHelper.formatDate(DateTime.now(), 'yyyy-MM-dd');

// URL Launcher
await UrlLauncherHelper.launchUrl('https://example.com');

// Device Info
final deviceInfo = DeviceInfoHelper();
final platform = await deviceInfo.getPlatform();
```

## Package Structure

```
lib/
├── masterfabric_core.dart          # Main library export
└── src/
    ├── base/                       # Base classes and architecture
    │   ├── base_view_*.dart        # Base view classes
    │   ├── master_view/            # Master view system
    │   └── widgets/                # Base widgets
    ├── helper/                     # Utility helpers
    ├── views/                      # Pre-built views
    ├── models/                     # Data models
    ├── layout/                     # Layout utilities
    ├── resources/                  # Generated resources
    └── di/                         # Dependency injection
```

## Requirements

- Dart SDK: `^3.9.2`
- Flutter: `>=1.17.0`

## Dependencies

### Core Dependencies
- `flutter_bloc: ^9.1.0` - State management
- `hydrated_bloc: ^10.1.1` - State persistence
- `go_router: ^15.1.1` - Navigation
- `injectable: ^2.7.1` - Dependency injection
- `slang: ^4.11.1` - Localization

### See `pubspec.yaml` for complete dependency list

## Documentation

For detailed documentation, see:
- [CHANGELOG.md](CHANGELOG.md) - Version history and changes
- [doc/analysis.md](doc/analysis.md) - Architecture analysis

## Package Information

- **Pub.dev**: [https://pub.dev/packages/masterfabric_core](https://pub.dev/packages/masterfabric_core)
- **GitHub**: [https://github.com/gurkanfikretgunak/masterfabric_core](https://github.com/gurkanfikretgunak/masterfabric_core)
- **Version**: 0.0.3
- **License**: AGPL-3.0

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the GNU AGPL v3.0 License - see the [LICENSE](LICENSE) file for details.

## Related Packages

- [osmea_components](https://github.com/masterfabric-mobile/osmea) - UI component library

## Support

For issues, questions, or contributions, please visit the [GitHub repository](https://github.com/gurkanfikretgunak/masterfabric_core).

## Publishing

This package is published on [pub.dev](https://pub.dev/packages/masterfabric_core). You can install it directly using:

```bash
flutter pub add masterfabric_core
```

Or add it manually to your `pubspec.yaml`:

```yaml
dependencies:
  masterfabric_core: ^0.0.3
```

---

**Published Package**: This package is available on [pub.dev](https://pub.dev/packages/masterfabric_core). For the latest stable version, use the pub.dev installation method above.

