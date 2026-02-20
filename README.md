<div align="center">

# masterfabric_core

[![pub package](https://img.shields.io/pub/v/masterfabric_core.svg)](https://pub.dev/packages/masterfabric_core)
[![License](https://img.shields.io/badge/license-AGPL--3.0-blue.svg)](LICENSE)
[![Cursor Plugin](https://img.shields.io/badge/Cursor-Plugin-00D4AA?style=for-the-badge](https://cursor.com/marketplace)

**A comprehensive Flutter package** providing core utilities, base classes, and shared logic for building scalable Flutter applications.

</div>

---

## 🚀 Cursor Plugin — **Recommended**

<table>
<tr>
<td width="70%">

**Use MasterFabric Core with AI assistance in Cursor IDE.**

The [**masterfabric-core-flutter**](https://github.com/gurkanfikretgunak/masterfabric_core) Cursor plugin provides:

- **Rules** — Coding conventions, create-view, create-helper, error-handling, platform-channels
- **Skills** — Base pattern documentation
- **Agents** — Flutter architecture specialist
- **Dart MCP** — Format, analyze, test, pub.dev search, symbol resolution

<sub>📖 [Full plugin docs](PLUGIN_README.md)</sub>

</td>
<td width="30%" align="center">

**Install**

<kbd>Settings</kbd> → <kbd>Plugins</kbd> → Add from URL

```
https://github.com/gurkanfikretgunak/masterfabric_core
```

</td>
</tr>
</table>

---

## Features

MasterFabric Core serves as the foundational layer for MasterFabric projects, offering a complete architecture with state management, navigation, dependency injection, and pre-built views.

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
- **LocalStorageHelper**: Multi-backend local storage with SharedPreferences and HiveCE support
  - Storage type switching via `LocalStorageType` enum
  - Automatic storage type configuration from `app_config.json`
  - Backward compatible with existing SharedPreferences implementation
- **HiveCeStorageHelper**: HiveCE storage implementation for high-performance data persistence
- **AuthStorageHelper**: Authentication data persistence
- **PermissionHandlerHelper**: Runtime permissions management
- **LocalNotificationHelper**: Local push notifications
- **FileDownloadHelper**: File downloads with progress tracking
- **DateTimeHelper**: Date and time operations and formatting
- **UrlLauncherHelper**: External URL and app launching
- **ApplicationShareHelper**: Content sharing functionality
- **DeviceInfoHelper**: Device information retrieval
- **AssetConfigHelper**: JSON config management from assets
- **GridHelper**: Grid layout calculation utilities
- **SpacerHelper**: UI spacing utilities
- **CommonLoggerHelper**: Logging utilities
- **SvgHelper**: SVG rendering from assets, network, string, and file sources
  - Color tinting and theming support
  - Reusable configurations with `SvgConfig`
  - Placeholder and error widget support for network SVGs
- **PushNotificationHelper**: Multi-provider push notification management
  - OneSignal and Firebase FCM support
  - Topic subscriptions and user targeting
  - Permission handling and token management
- **WebViewerHelper**: HTML and WebView rendering
  - Sanitized HTML rendering
  - Custom styling support
  - Full WebView for URLs
- **ForceUpdateHelper**: App version checking and update prompts
  - Multiple version providers (config file, API, Remote Config)
  - Multiple UI styles (dialog, bottom sheet, full screen)
  - Semantic version comparison
  - Store redirects (App Store, Play Store, custom URLs)
  - Customizable strings for localization
- **SkeletonHelper**: Comprehensive skeleton loading placeholders
  - 10 animation styles: shimmer, pulse, wave, glow, slide, bounce, breathe, gradientFlow, sparkle, none
  - Shape widgets: rectangle, circle, rounded, text, avatar, custom
  - Preset widgets: list item, card, profile, article, product, social post, story
  - Theme support with `SkeletonTheme` and `SkeletonConfig`
  - Custom shapes with `DiamondClipper`, `HexagonClipper`, `StarClipper`
- **PermissionHelper**: Runtime permissions via platform channels (no Dart packages)
  - Native Kotlin (Android) and Swift (iOS) implementation
  - Step-by-step bottom sheet after splash, restylable per app
  - Configure via `permissionsConfiguration` in app_config and `RunBeforeFeature.permissions`
- **AppTrackingTransparencyHelper**: iOS App Tracking Transparency (ATT) support
  - Native iOS implementation via platform channels (no external packages required)
  - Request tracking authorization with system dialog
  - Check current tracking status without prompting
  - Platform-safe: automatically returns `true` on non-iOS platforms
  - Integrated into `MasterApp.runBefore()` for easy initialization
- **NetworkInfoHelper**: Comprehensive network information helper
  - WiFi details: SSID, BSSID, IP, IPv6, submask, broadcast, gateway via `network_info_plus`
  - Connectivity: connection type, connected status, WiFi/mobile checks via `connectivity_plus`
  - Cloudflare Trace: public IP, country location, datacenter, TLS, HTTP, WARP via `cloudflare.com/cdn-cgi/trace`
  - Public IP lookup via ipify API
  - DNS resolution via `dart:io`
  - Host reachability check via TCP socket
  - Download speed estimation
  - Network interface listing
  - Platform-safe: all methods return safe defaults on web
- **NetworkInitFeature**: Enum-based network initialization for `MasterApp.runBefore()`
  - `cloudflareTrace` - IP, location, datacenter persisted to local storage
  - `publicIP` - External IP persisted to local storage
  - `connectivity` - Connection type and status persisted to local storage
  - `wifiInfo` - WiFi details persisted to local storage

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
  masterfabric_core: ^1.0.0
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
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize MasterApp components (loads config and sets storage type)
  await MasterApp.runBefore(
    assetConfigPath: 'assets/app_config.json',
    hydrated: true, // Enable state persistence
    requestTrackingTransparency: true, // Request iOS ATT authorization (iOS 14+)
    networkFeatures: {
      NetworkInitFeature.cloudflareTrace, // IP, location, datacenter
      NetworkInitFeature.connectivity,     // WiFi/mobile/none status
    },
  );
  
  // Create your router
  final router = GoRouter(
    routes: [
      // Your routes here
    ],
  );
  
  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;
  
  const MyApp({super.key, required this.router});
  
  @override
  Widget build(BuildContext context) {
    return MasterApp(
      router: router,
      shouldSetOrientation: true,
      preferredOrientations: [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
      showPerformanceOverlay: false,
      textDirection: TextDirection.ltr,
      fontScale: 1.0,
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

### 4. Configure Storage Backend

Storage backend can be configured in `app_config.json`:

```json
{
  "storageConfiguration": {
    "localStorageType": "hiveCe",
    "enableEncryption": false,
    "cacheDurationDays": 7,
    "maxCacheSizeMb": 100
  }
}
```

Supported values for `localStorageType`:
- `"sharedPreferences"` - Default, uses SharedPreferences (backward compatible)
- `"hiveCe"` - Uses HiveCE for high-performance storage

### 4b. iOS App Tracking Transparency Setup

For iOS apps, you need to add the `NSUserTrackingUsageDescription` key to your `Info.plist`:

```xml
<key>NSUserTrackingUsageDescription</key>
<string>We would like to use your data to deliver personalized content and improve your app experience.</string>
```

Then enable ATT in your app initialization:

```dart
await MasterApp.runBefore(
  assetConfigPath: 'assets/app_config.json',
  hydrated: true,
  requestTrackingTransparency: true, // Shows ATT dialog on iOS 14+
);
```

The authorization result is automatically stored in `LocalStorageHelper` as `osmea_tracking_authorized` (boolean).

**Note**: The ATT dialog only appears on real iOS devices (iOS 14+). On simulators, it will return `false` by default. On Android and other platforms, the helper automatically returns `true` since ATT is iOS-only.

### 4c. Network Features at Startup

Use `NetworkInitFeature` enum to pre-fetch and persist network data during initialization:

```dart
await MasterApp.runBefore(
  assetConfigPath: 'assets/app_config.json',
  hydrated: true,
  networkFeatures: {
    NetworkInitFeature.cloudflareTrace, // IP, location, datacenter via Cloudflare
    NetworkInitFeature.publicIP,        // External IP via ipify
    NetworkInitFeature.connectivity,    // WiFi/mobile/none status
    NetworkInitFeature.wifiInfo,        // WiFi SSID, IP, gateway
  },
);
```

Each feature stores its result in `LocalStorageHelper` with `osmea_` prefix keys:

| Feature | Storage Keys |
|---------|-------------|
| `cloudflareTrace` | `osmea_cf_ip`, `osmea_cf_location`, `osmea_cf_colo`, `osmea_cf_tls`, `osmea_cf_http`, `osmea_cf_warp` |
| `publicIP` | `osmea_public_ip` |
| `connectivity` | `osmea_connection_type`, `osmea_is_connected` |
| `wifiInfo` | `osmea_wifi_name`, `osmea_wifi_ip`, `osmea_wifi_gateway` |

**Note**: Network features are platform-safe. On web, methods return safe defaults. WiFi details require platform permissions on some devices.

### 4d. Configure Force Update

Force update configuration in `app_config.json`:

```json
{
  "forceUpdateConfiguration": {
    "latestVersion": "2.0.0",
    "minimumVersion": "1.0.0",
    "releaseNotes": "Bug fixes and new features",
    "features": ["New feature 1", "Performance improvements"],
    "storeUrl": {
      "ios": "https://apps.apple.com/app/id123456789",
      "android": "https://play.google.com/store/apps/details?id=com.example.app"
    }
  }
}
```

Update types:
- **Force**: Current version < minimumVersion (blocking, user must update)
- **Recommended**: Current version < latestVersion with minimumVersion set
- **Optional**: Current version < latestVersion without minimumVersion

### 4e. Permission Helper (Platform Channel)

The Permission Helper uses native Kotlin (Android) and Swift (iOS) via platform channels—no Dart packages. It shows a step-by-step bottom sheet after splash when permissions are configured.

**UX flow:**
1. **Pre-check** – Skips permissions already granted (no re-ask).
2. **Summary first** – Shows a summary of all needed permissions with descriptions before asking.
3. **Step-by-step** – User taps "Continue", then each permission is requested one at a time.

**Enable in `MasterApp.runBefore`:**

```dart
await MasterApp.runBefore(
  assetConfigPath: 'assets/app_config.json',
  hydrated: true,
  runBeforeFeatures: {
    RunBeforeFeature.permissions,
  },
);
```

**Configure in `app_config.json`:**

```json
{
  "permissionsConfiguration": {
    "requestOnStartup": true,
    "requiredPermissions": ["camera", "location", "photos"],
    "optionalPermissions": ["microphone", "contacts"],
    "showSummaryFirst": true,
    "summaryTitle": "Permissions needed",
    "summaryDescription": "This app needs access to the following:",
    "summaryContinueLabel": "Continue",
    "permissionDescriptions": {
      "camera": "To capture photos and videos",
      "location": "To show nearby places",
      "photos": "To let you choose images"
    },
    "bottomSheetStyle": {
      "primaryColor": "#2196F3",
      "backgroundColor": "#FFFFFF",
      "textColor": "#000000",
      "grantButtonLabel": "Allow",
      "skipButtonLabel": "Skip",
      "notNowButtonLabel": "Not Now"
    }
  }
}
```

Permission keys: `camera`, `location`, `locationWhenInUse`, `storage`, `photos`, `microphone`, `contacts`, `notification`

**Restylable bottom sheet**: Pass `PermissionHelperBottomSheetConfig` when calling `PermissionHelperBottomSheet.show()`, or use `permissionsConfiguration.bottomSheetStyle` in app_config to customize colors and labels per app.

**iOS Info.plist** – add usage description keys for each permission you request:

```xml
<key>NSCameraUsageDescription</key>
<string>This app needs camera access to capture photos.</string>
<key>NSMicrophoneUsageDescription</key>
<string>This app needs microphone access for voice features.</string>
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs location access to show relevant content.</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>This app needs access to your photos to let you choose images.</string>
<key>NSContactsUsageDescription</key>
<string>This app needs contacts access to help you connect with others.</string>
```

**Android AndroidManifest.xml** – add `<uses-permission>` for each permission:

```xml
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.READ_MEDIA_IMAGES" />
<uses-permission android:name="android.permission.RECORD_AUDIO" />
<uses-permission android:name="android.permission.READ_CONTACTS" />
<uses-permission android:name="android.permission.POST_NOTIFICATIONS" />
```

**Flow**: runBefore (reads config) → splash → permission summary (if showSummaryFirst) → permission bottom sheet (step-by-step) → home/onboarding

### 5. Use Helper Utilities

```dart
import 'package:masterfabric_core/masterfabric_core.dart';

// Local Storage
// Storage type is automatically configured from app_config.json
// Or set manually:
LocalStorageHelper.setStorageType(LocalStorageType.hiveCe); // or LocalStorageType.sharedPreferences

await LocalStorageHelper.setString('key', 'value');
final value = LocalStorageHelper.getString('key');

// Get value by key (supports any type, async)
final dynamicValue = await LocalStorageHelper.getByKey('key');

// Get all items from database
final allItems = await LocalStorageHelper.getAllItems();

// Check if key exists
final exists = LocalStorageHelper.hasKey('key');

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

// SVG Helper
SvgHelper.fromAsset('assets/icons/home.svg', width: 24, height: 24, color: Colors.blue);
SvgHelper.fromNetwork('https://example.com/logo.svg', placeholder: CircularProgressIndicator());
SvgHelper.themedIcon(context, 'assets/icons/star.svg'); // Auto-colored from IconTheme

// Force Update Helper
await ForceUpdateHelper.instance.initialize(
  ForceUpdateConfig(
    providerType: VersionProviderType.configFile,
    storeConfig: StoreConfig(
      appStoreId: '123456789',
      playStorePackage: 'com.example.app',
    ),
  ),
);

final updateInfo = await ForceUpdateHelper.instance.checkForUpdate();
if (updateInfo.hasUpdate) {
  await ForceUpdateHelper.instance.showUpdateUI(context, updateInfo);
}

// Skeleton Helper
// Simple shapes
SkeletonHelper.rectangle(width: 200, height: 40);
SkeletonHelper.circle(size: 48);
SkeletonHelper.text(lines: 3);

// Presets
SkeletonHelper.listItem(lines: 2);
SkeletonHelper.card(imageHeight: 150);
SkeletonHelper.socialPost(showImage: true);

// With animation type
SkeletonTheme(
  config: SkeletonConfig(
    animationType: SkeletonAnimationType.pulse,
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
  ),
  child: SkeletonHelper.productGrid(itemCount: 4),
);

// Dark theme
SkeletonTheme(
  config: SkeletonConfig.dark(),
  child: Column(
    children: [
      SkeletonHelper.listItem(),
      SkeletonHelper.listItem(),
    ],
  ),
);

// App Tracking Transparency (iOS)
// Request tracking authorization (shows iOS system dialog)
final bool authorized = await AppTrackingTransparencyHelper.instance
    .requestTrackingAuthorization();

// Check current status without prompting
final TrackingStatus status = await AppTrackingTransparencyHelper.instance
    .getTrackingAuthorizationStatus();

// Status values: TrackingStatus.notDetermined, .restricted, .denied, .authorized

// Result is automatically stored in LocalStorageHelper when used via MasterApp.runBefore()
final storedResult = await LocalStorageHelper.getItem('osmea_tracking_authorized');

// Network Info Helper
// Cloudflare Trace (IP, location, datacenter, TLS)
final trace = await NetworkInfoHelper.instance.getCloudflareTrace();
print('IP: ${trace?.ip}, Country: ${trace?.loc}, DC: ${trace?.colo}');

// WiFi information
final wifi = await NetworkInfoHelper.instance.getAllWifiInfo();
print('WiFi: ${wifi.wifiName}, IP: ${wifi.wifiIP}');

// Connectivity
final connected = await NetworkInfoHelper.instance.isConnected();
final type = await NetworkInfoHelper.instance.getConnectionType();

// Public IP
final publicIP = await NetworkInfoHelper.instance.getPublicIP();

// DNS Lookup
final ips = await NetworkInfoHelper.instance.dnsLookup('google.com');

// Host Reachability
final result = await NetworkInfoHelper.instance.isHostReachable('google.com');
print('Reachable: ${result.isReachable}, Latency: ${result.latencyMs}ms');

// Download Speed Estimation
final speed = await NetworkInfoHelper.instance.estimateDownloadSpeed();
print('Speed: ${speed.downloadSpeedMbps.toStringAsFixed(2)} Mbps');

// Network Interfaces
final interfaces = await NetworkInfoHelper.instance.getNetworkInterfaces();

// Network features are persisted to local storage when using MasterApp.runBefore()
final cfIP = await LocalStorageHelper.getItem('osmea_cf_ip');
final cfLocation = await LocalStorageHelper.getItem('osmea_cf_location');
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
    ├── helper/                     # Utility helpers (incl. NetworkInfoHelper, NetworkInitFeature)
    ├── views/                      # Pre-built views
    ├── models/                     # Data models
    ├── layout/                     # Layout utilities
    ├── resources/                  # Generated resources
    └── di/                         # Dependency injection
ios/
├── Classes/
│   └── MasterfabricCorePlugin.swift  # Native iOS plugin (ATT support)
└── masterfabric_core.podspec       # CocoaPods specification
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
- `hive_ce: ^2.16.0` - High-performance NoSQL database (optional storage backend)
- `flutter_svg: ^2.2.3` - SVG rendering support
- `network_info_plus: ^7.0.0` - WiFi network information
- `connectivity_plus: ^6.1.4` - Network connectivity status

### See `pubspec.yaml` for complete dependency list

## Documentation

For detailed documentation, see:
- [CHANGELOG.md](CHANGELOG.md) - Version history and changes
- [doc/analysis.md](doc/analysis.md) - Architecture analysis

## Package Information

- **Pub.dev**: [https://pub.dev/packages/masterfabric_core](https://pub.dev/packages/masterfabric_core)
- **GitHub**: [https://github.com/gurkanfikretgunak/masterfabric_core](https://github.com/gurkanfikretgunak/masterfabric_core)
- **Version**: 1.0.0
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
  masterfabric_core: ^1.0.0
```

---

**Published Package**: This package is available on [pub.dev](https://pub.dev/packages/masterfabric_core). For the latest stable version, use the pub.dev installation method above.

