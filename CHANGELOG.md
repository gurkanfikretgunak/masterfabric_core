# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.0.3] - 2025-12-23

### Added

#### Example App
- Complete example application demonstrating `masterfabric_core` usage
- Example app structure with features (home, products, profile)
- Example screens demonstrating `MasterViewCubit` pattern:
  - `HomeView` - Home screen with device info and storage examples
  - `ProductsView` - Products list with loading, error, and success states
  - `ProfileView` - Profile screen with user information
- Example cubits and states showing state management patterns
- Example routes configuration with GoRouter
- Example `main.dart` showing `MasterApp` initialization
- Example `README.md` with usage patterns and documentation
- Example app configuration (`app_config.json`)
- GetIt dependency injection setup examples
- AppBar customization examples with back button and actions

### Changed
- Version bump to 0.0.3

[0.0.3]: https://github.com/gurkanfikretgunak/masterfabric_core/releases/tag/v0.0.3

## [0.0.1] - 2025-12-23

### Added

#### Base Module
- `BaseViewBloc` - Abstract BLoC-based view class
- `BaseViewCubit` - Abstract Cubit-based view class
- `BaseViewHydratedCubit` - Persisted Cubit view class with state persistence
- `BaseViewModel` - Base view model class
- `BaseViewModelCubit` - Cubit-based view model
- `BaseViewModelHydratedCubit` - Hydrated view model with persistence
- `BaseViewState` - Base state management class with common states (sealed class)
- `MasterView` - Unified view management interface with enums and mixins
- `MasterApp` - Main application wrapper with initialization and configuration
- `MasterViewCubit` - Cubit-based master view with enums and mixins
- `MasterViewHydratedCubit` - Hydrated master view with persistence, enums, mixins, and initialization
- `MasterScaffoldWidget` - Common scaffold widget with osmea_components integration
- `HydratedBlocInit` - Hydrated bloc storage initialization helper

#### Helper Module
- `LocalStorageHelper` - SharedPreferences wrapper for local storage (static API)
- `AuthStorageHelper` - Authentication data persistence helper
- `SpacerHelper` - UI spacing utilities with CoreSpacerType enum
- `UrlLauncherHelper` - External URL and app launching
- `WebViewerHelper` - HTML/WebView rendering utilities
- `ApplicationShareHelper` - Content sharing functionality
- `DateTimeHelper` - Date and time operations and formatting
- `DoubleExtensionHelper` - Number formatting extensions
- `PriceInfoCurrencyHelper` - Currency formatting utilities
- `FirstLetterCapitalizeHelper` - String capitalization helpers
- `GridHelper` - Grid layout calculation utilities
- `DeviceInfoHelper` - Device information retrieval (singleton pattern)
- `PermissionHandlerHelper` - Runtime permissions management with abstract base and models
- `LocalNotificationHelper` - Local push notifications
- `FileDownloadHelper` - File downloads with progress tracking
- `AssetConfigHelper` - JSON config management from assets with fallback support (camelCase keys)
- `PackageInfoHelper` - Package information retrieval (app name, version, build number)
- `OnboardingStorageHelper` - Onboarding flow storage (uses LocalStorageHelper)
- `CommonLoggerHelper` - Logging utilities

#### Views Module
- `SplashView` - App launch screen with loading logic and multiple style support
  - `SplashStartupWidget` - Basic splash style with logo and loading indicator
  - `SplashSpaceWidget` - Ultra-minimalist text-based splash style
  - `SplashEnterpriseWidget` - Professional corporate card-based splash style
- `OnboardingView` - User onboarding flow with cubit and state management
- `AuthView` - Authentication screen with Sign In/Sign Up tabs and cubit/state
- `AccountView` - User account management screen with cubit and state
- `PermissionsView` - Permission request screens with cubit and state
- `ErrorHandlingView` - Error display and recovery with cubit and state
- `LoadingView` - Loading state views with cubit and state
- `EmptyView` - Empty state views with cubit and state
- `InfoBottomSheetView` - Information bottom sheets with cubit and state
- `ImageDetailView` - Image detail viewer with cubit and state
- `SearchView` - Search functionality interface with cubit and state
- `AppRoutes` - Route definitions with GoRouter integration

#### Models Module
- `LoadingModel` - Loading state configurations
- `LoadingConfig` - Loading configuration with type, message, dismissible, and timeout
- `LoadingType` enum - Loading indicator types (circular, linear, custom)
- `ErrorModel` - Error handling data models
- `OnboardingPageModel` - Individual onboarding page configuration
- `OnboardingConfig` - Onboarding flow configuration with pages and button text
- `SplashConfigModel` - Splash screen configurations with style support
- `SplashStyle` enum - Splash style options (startup, space, enterprise)
- `SplashFlowState` enum - Splash flow states
- `SplashAction` enum - Splash actions
- `EmptyViewModel` - Empty state configurations
- `InfoModel` - Info sheet configurations

#### Layout Module
- `Grid` - Grid layout system with responsive calculations and dev mode overlay (`DevGridOverlay`)
- `Spacer` - Spacing utilities for consistent UI (`CoreSpacer`, `NavbarArea`, `FooterArea`)
- `CoreSpacerType` enum - Spacer types (navbar, footer, content, section, horizontal, vertical)

#### Dependency Injection
- Injectable configuration setup with code generation
- GetIt integration structure
- Injection configuration files (`injection.dart`, `injection.config.dart`)

#### Localization
- Slang configuration for i18n (`slang.yaml`)
- English translation file (`assets/i18n/en.i18n.json`)
- Generated resources (`resources.g.dart`, `resources_en.g.dart`)
- Translation keys organized by view (common, auth, account, onboarding, permissions, search, error, splash, etc.)

#### Configuration
- `pubspec.yaml` with all required dependencies
- `slang.yaml` for localization configuration
- `app_config.json` for app configuration with fallback support (camelCase format)
  - `appSettings` - App name, version, environment, debug mode, maintenance mode
  - `uiConfiguration` - Theme mode, font scale, dev mode settings
  - `splashConfiguration` - Splash screen style, duration, colors, logo settings
  - `featureFlags` - Feature toggles (onboarding, analytics, etc.)
  - `navigationConfiguration` - Default routes, deep linking
  - `apiConfiguration` - API base URL, timeout, retry settings
  - `permissionsConfiguration` - Required and optional permissions
  - `localizationConfiguration` - Default locale, supported locales
  - `storageConfiguration` - Encryption, cache settings

### Dependencies
- State Management: `flutter_bloc` (^9.1.0), `hydrated_bloc` (^10.1.1), `equatable` (^2.0.7)
- Navigation: `go_router` (^15.1.1)
- Dependency Injection: `injectable` (^2.7.1), `get_it` (^8.3.0)
- Localization: `slang` (^4.11.1), `slang_flutter` (^4.11.0)
- Utilities: `logger` (^2.5.0), `dio` (^5.7.0), `shared_preferences` (^2.5.3), `sqflite` (^2.4.2), `url_launcher` (^6.3.1), `intl` (^0.20.0)
- System: `device_info_plus` (^11.4.0), `package_info_plus` (^8.3.0), `permission_handler` (^11.2.0), `path_provider` (^2.1.5)
- UI: `flutter_html` (^3.0.0), `flutter_inappwebview` (^6.1.5), `webview_flutter` (^4.10.0)
- Notifications: `flutter_local_notifications` (^19.4.2), `timezone` (^0.10.1)
- Sharing: `share_plus` (^10.1.4)

### Dev Dependencies
- `flutter_test` - Flutter testing framework
- `flutter_lints` (^5.0.0) - Linting rules
- `build_runner` (^2.4.7) - Code generation
- `injectable_generator` (^2.11.1) - Injectable code generation
- `slang_build_runner` (^4.8.0) - Slang code generation

### Documentation
- Comprehensive README.md with usage examples
- Package structure documentation
- Architecture overview
- Quick start guide

[0.0.1]: https://github.com/gurkanfikretgunak/masterfabric_core/releases/tag/v0.0.1

## [0.0.2] - 2025-12-23

### Changed
- Migrated from `osmea_components` to Material Design widgets
- All UI components now use Flutter's built-in Material widgets
- Updated `MasterScaffoldWidget` to use Material Design instead of osmea_components
- Updated splash widgets (`SplashStartupWidget`, `SplashSpaceWidget`, `SplashEnterpriseWidget`) to use Material widgets
- Replaced `OsmeaColors` with Material `Colors`
- Replaced `OsmeaComponents.*` helpers with standard Material widgets (`Container`, `Column`, `Row`, `Text`, etc.)
- Updated `SpacerHelper` to use Material colors instead of osmea colors
- Removed `osmea_components` dependency from `pubspec.yaml`

### Removed
- `osmea_components` Git dependency (replaced with Material widgets)
- All `OsmeaComponents.*` helper methods
- All `OsmeaColors.*` color references
- `osmea_components` export from main library

### Documentation
- Updated README.md with pub.dev installation instructions
- Added package publishing information
- Updated repository URLs to `https://github.com/gurkanfikretgunak/masterfabric_core`

### Publishing
- Package published to [pub.dev](https://pub.dev/packages/masterfabric_core)
- Package ready for public use via `flutter pub add masterfabric_core`
- Version bumped to 0.0.2

[0.0.2]: https://github.com/gurkanfikretgunak/masterfabric_core/releases/tag/v0.0.2
