import 'package:masterfabric_core/src/helper/device_info_helper.dart';
import 'package:masterfabric_core/src/helper/local_storage/local_storage_helper.dart';
import 'package:masterfabric_core/src/helper/package_info_helper.dart';
import 'package:masterfabric_core/src/helper/asset_config_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:masterfabric_core/src/layout/grid.dart';
import 'package:masterfabric_core/src/base/master_view_hydrated_cubit/hydrated/hydrated_bloc_init.dart';
import 'package:masterfabric_core/src/helper/permission_handler_helper/permission_handler_helper.dart';
// Localization imports - uncomment if using slang_flutter
// import 'package:slang_flutter/slang_flutter.dart' show LocaleSettings, TranslationProvider;

// Global variable for dev mode spacer control
bool globalDevModeSpacer = true;

/// 🚀 MasterApp: The main entry point for the application.
/// Initializes configuration (asset), and wires the root router.
///
/// How to use the MasterApp:
///
/// To use the MasterApp, you need to create an instance of it and provide a router.
/// Here's a simple example:
///
/// ```dart
/// void main() async {
///   WidgetsFlutterBinding.ensureInitialized();
///   final router = GoRouter(
///     routes: [
///       // Define your routes here
///     ],
///   );
///
///   await MasterApp.runBefore(); // Initialize necessary components
///   runApp(MasterApp(
///     router: router,
///     shouldSetOrientation: true,
///     preferredOrientations: [
///       DeviceOrientation.portraitUp,
///       DeviceOrientation.portraitDown,
///     ],
///     showPerformanceOverlay: false,
///     textDirection: TextDirection.ltr,
///     fontScale: 1.0,
///   ));
/// }
/// ```

class MasterApp extends StatelessWidget {
  ///
  ///
  /// Initializes necessary components before running the app.
  ///
  /// Sets up local storage, configuration sources.
  ///
  /// Parameters:
  /// - [assetConfigPath]: Path to the asset configuration file
  /// - [hydrated]: Whether to initialize HydratedBloc storage
  ///
  /// This ensures critical services are ready before the app starts.
  ///
  ///  update date 11/05/2025
  static Future<void> runBefore({
    String assetConfigPath = 'assets/app_config.json',
    bool hydrated = false,
  }) async {
    // 🛠️ Initialize necessary components before running the app
    final AssetConfigHelper assetConfigHelper = AssetConfigHelper();

    /// 🗂️ Initialize App Configuration System with Fallback Support
    /// 
    /// Configuration Loading Priority:
    /// 1. Try to load from specified assetConfigPath (project-specific config)
    /// 2. If fails, fallback to @core package's default config
    /// 3. If both fail, continue with default values
    debugPrint('🔄 Initializing app configuration system...');
    
    // Define fallback configuration path (core package default)
    const String fallbackConfigPath = 'packages/core/assets/app_config.json';
    bool assetConfigLoaded = false;
    String actualConfigPath = assetConfigPath;

    // Try to load project-specific configuration first (without fallback)
    try {
      debugPrint('🔍 Attempting to load project-specific configuration: $assetConfigPath');
      assetConfigLoaded = await assetConfigHelper.loadConfig(assetConfigPath, false); // Disable fallback
      if (assetConfigLoaded) {
        debugPrint('✅ Project-specific asset configuration loaded successfully from: $assetConfigPath');
        actualConfigPath = assetConfigPath;
      } else {
        debugPrint('⚠️ Failed to load project-specific asset configuration from: $assetConfigPath');
      }
    } catch (e) {
      debugPrint('❌ Error loading project-specific config: $e');
    }

    // If project-specific config failed, try @core package fallback
    if (!assetConfigLoaded) {
      try {
        debugPrint('🔄 Attempting to load fallback configuration from @core package: $fallbackConfigPath');
        assetConfigLoaded = await assetConfigHelper.loadConfig(fallbackConfigPath, false); // Disable fallback for explicit path
        if (assetConfigLoaded) {
          debugPrint('✅ Fallback asset configuration loaded successfully from: $fallbackConfigPath');
          actualConfigPath = fallbackConfigPath;
        } else {
          debugPrint('⚠️ Failed to load fallback asset configuration from: $fallbackConfigPath');
        }
      } catch (e) {
        debugPrint('❌ Error loading fallback config: $e');
      }
    }

    // Final configuration status with enhanced emoji feedback
    if (assetConfigLoaded) {
      final bool isProjectConfig = actualConfigPath == assetConfigPath;
      final String sourceEmoji = isProjectConfig ? '🎯' : '📦';
      final String sourceName = isProjectConfig ? 'PROJECT-SPECIFIC' : 'CORE PACKAGE FALLBACK';
      
      debugPrint('');
      debugPrint('╔══════════════════════════════════════════════════════════╗');
      debugPrint('║                 🗂️  CONFIGURATION LOADED                 ║');
      debugPrint('╠══════════════════════════════════════════════════════════╣');
      debugPrint('║ $sourceEmoji Source: $sourceName');
      debugPrint('║ 📁 Path: $actualConfigPath');
      debugPrint('╠══════════════════════════════════════════════════════════╣');
      
      // Log key configuration values for debugging
      final appName = assetConfigHelper.getString('appSettings.appName', 'MasterFabric App');
      final environment = assetConfigHelper.getString('appSettings.environment', 'unknown');
      final debugMode = assetConfigHelper.getBool('appSettings.debugMode', false);
      final themeMode = assetConfigHelper.getString('uiConfiguration.themeMode', 'light');
      
      debugPrint('║ 📱 App Name: $appName');
      debugPrint('║ 🔧 Environment: $environment');
      debugPrint('║ 🐛 Debug Mode: ${debugMode ? '✅ ON' : '❌ OFF'}');
      debugPrint('║ 🎨 Theme: ${themeMode.toUpperCase()}');
      debugPrint('╚══════════════════════════════════════════════════════════╝');
      debugPrint('');
      
      if (isProjectConfig) {
        debugPrint('🎯 SUCCESS: Using your project-specific configuration!');
      } else {
        debugPrint('📦 FALLBACK: Using core package configuration as fallback');
        debugPrint('💡 TIP: Create \'$assetConfigPath\' to use project-specific config');
      }
    } else {
      debugPrint('');
      debugPrint('╔══════════════════════════════════════════════════════════╗');
      debugPrint('║                ⚠️  CONFIGURATION FAILED                 ║');
      debugPrint('╠══════════════════════════════════════════════════════════╣');
      debugPrint('║ ❌ No configuration file could be loaded!');
      debugPrint('║ 🔍 Attempted paths:');
      debugPrint('║   1️⃣ $assetConfigPath (project-specific)');
      debugPrint('║   2️⃣ $fallbackConfigPath (core package fallback)');
      debugPrint('║ 💡 Using hardcoded default values only');
      debugPrint('╚══════════════════════════════════════════════════════════╝');
      debugPrint('');
    }
    
    // Log configuration status for debugging
    if (assetConfigLoaded) {
      final configStats = assetConfigHelper.getConfigStats();
      debugPrint('📊 Asset Config Stats: $configStats');
    }

    /// Initialize Local Storage
    /// local storage is used to store the app data
    await LocalStorageHelper.init();
    
    // Store configuration metadata in local storage
    await LocalStorageHelper.setItem('osmea_config_loaded', assetConfigLoaded);
    await LocalStorageHelper.setItem('osmea_config_source', actualConfigPath);
    await LocalStorageHelper.setItem('osmea_config_is_fallback', actualConfigPath != assetConfigPath);
    
    // set the app data to the local storage
    await LocalStorageHelper.setItem('osmea_device_id',
        await DeviceInfoHelper.instance.platformDeviceDeviceID());
    await LocalStorageHelper.setItem('osmea_package_version',
        await PackageInfoHelper.instance.getPackageVersion());
    await LocalStorageHelper.setItem('osmea_package_build_number',
        await PackageInfoHelper.instance.getPackageBuildNumber());
    await LocalStorageHelper.setItem('osmea_package_app_name',
        await PackageInfoHelper.instance.getPackageAppName());
    await LocalStorageHelper.setItem('osmea_package_package_name',
        await PackageInfoHelper.instance.getAppPackageName());
    await LocalStorageHelper.setItem('osmea_package_version_and_build_number',
        await PackageInfoHelper.instance.getPackageVersionAndBuildNumber());
    await LocalStorageHelper.setItem('osmea_package_manufacturer',
        await DeviceInfoHelper.instance.platformDeviceDeviceFactory());
    await LocalStorageHelper.setItem('osmea_package_device_name',
        await DeviceInfoHelper.instance.platformDeviceDeviceName());
    await LocalStorageHelper.setItem('osmea_package_device_id',
        await DeviceInfoHelper.instance.platformDeviceDeviceID());
    await LocalStorageHelper.setItem('osmea_package_device_model',
        await DeviceInfoHelper.instance.platformDeviceDeviceModel());
    await LocalStorageHelper.setItem('osmea_package_device_physical',
        await DeviceInfoHelper.instance.platformDevicePhysical());
    await LocalStorageHelper.setItem('osmea_package_device_system_version',
        (await DeviceInfoHelper.instance.platformDeviceSystemVersion()).join(','));

    // Set the locale settings to use the device's locale
    // LocaleSettings.useDeviceLocale(); // Uncomment if using slang_flutter

    // Initialize HydratedBloc if requested
    if (hydrated) {
      await initializeHydratedBlocStorage();
    }

    // Initialize permission handler for real devices
    await PermissionHandlerHelper.instance.initializeForRealDevice();

    /// Log the initialization status
    debugPrint("MasterApp at runBefore Local Storage Initialized");
    final allItems = await LocalStorageHelper.getAllItems();
    debugPrint("For Run Before All items: $allItems");
  }

  static final messengerKey = GlobalKey<ScaffoldMessengerState>();

  const MasterApp({
    super.key,
    required this.router,
    this.shouldSetOrientation =
        false, // Should the app manage device orientation?
    this.preferredOrientations = const [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ], // Preferred orientations for the app
    this.showPerformanceOverlay =
        false, // Show performance overlay for debugging
    this.textDirection = TextDirection.ltr, // Text direction for localization
    this.fontScale = 1.0, // Scale factor for text size
    this.themeMode = ThemeMode.light, // Default to light theme
    this.devModeGrid = true,
    this.devModeSpacer = true,
    this.useConfigurationHelpers = true, // Enable configuration helpers
  })  : assert(fontScale > 0, 'Font scale must be greater than 0! 🔍');

  final GoRouter router; // Router for navigation
  final bool shouldSetOrientation; // Flag to manage orientation
  final List<DeviceOrientation>
      preferredOrientations; // List of preferred orientations
  final bool showPerformanceOverlay; // Flag to show performance overlay
  final TextDirection textDirection; // Text direction for the app
  final double fontScale; // Font scaling factor
  final ThemeMode themeMode; // Theme mode for the app
  final bool devModeGrid;
  final bool devModeSpacer;
  final bool useConfigurationHelpers; // Enable configuration helpers

  @override
  Widget build(BuildContext context) {
    // ⚙️ Try-catch block to handle potential exceptions during orientation setting
    try {
      if (shouldSetOrientation) {
        SystemChrome.setPreferredOrientations(preferredOrientations);
      } else {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp, // Default to portrait up
        ]);
      }
    } catch (e) {
      // ❌ Handle any exceptions that occur during orientation setting
      debugPrint(
          'Error setting preferred orientations: $e 📉'); // Log the error
    }

    // 🎨 Get theme configuration from config helpers if available
    ThemeMode effectiveThemeMode = themeMode;
    double effectiveFontScale = fontScale;
    bool effectiveShowPerformanceOverlay = showPerformanceOverlay;
    bool effectiveDevModeGrid = devModeGrid;
    bool effectiveDevModeSpacer = devModeSpacer;
    final AssetConfigHelper assetConfigHelper = AssetConfigHelper();
    
    if (useConfigurationHelpers) {
      // Try to get theme mode from configuration
      final String themeModeConfig = assetConfigHelper.getString('uiConfiguration.themeMode', 'light');
      switch (themeModeConfig.toLowerCase()) {
        case 'dark':
          effectiveThemeMode = ThemeMode.dark;
          break;
        case 'system':
          effectiveThemeMode = ThemeMode.system;
          break;
        default:
          effectiveThemeMode = ThemeMode.light;
          break;
      }
      
      // Try to get font scale from configuration
      effectiveFontScale = assetConfigHelper.getDouble('uiConfiguration.fontScale', fontScale);
      
      // Try to get performance overlay setting from configuration
      effectiveShowPerformanceOverlay = assetConfigHelper.getBool('uiConfiguration.showPerformanceOverlay', showPerformanceOverlay);
      
      // Try to get dev mode settings from configuration
      effectiveDevModeGrid = assetConfigHelper.getBool('uiConfiguration.devModeGrid', devModeGrid);
      effectiveDevModeSpacer = assetConfigHelper.getBool('uiConfiguration.devModeSpacer', devModeSpacer);
      
      debugPrint('🎨 Using configuration: theme=$themeModeConfig, fontScale=$effectiveFontScale, performanceOverlay=$effectiveShowPerformanceOverlay');
    }

    // 🌍 Wrap the app in a translation provider for localization
    // Uncomment TranslationProvider if using slang_flutter
    // return TranslationProvider(
    //   child: MaterialApp.router(
    return MaterialApp.router(
        themeMode: effectiveThemeMode,
        // Theme for the app our favorite color is blue always
        // We can change it to any color we want and we can use it in the app
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        title: useConfigurationHelpers 
            ? assetConfigHelper.getString('appSettings.appName', 'MasterFabric')
            : 'MasterFabric',
        scaffoldMessengerKey:
            messengerKey, // Key for showing snackbars and dialogs
        routerConfig: router, // Configuration for the router
        showPerformanceOverlay:
            effectiveShowPerformanceOverlay, // Show performance overlay if enabled
        builder: (context, child) {
          debugPrint("MasterApp at build");
          // Create the MediaQuery data with the specified font scale
          final mediaQueryData = MediaQuery.of(context).copyWith(
            textScaler:
                TextScaler.linear(effectiveFontScale), // Apply linear text scaling
          );
          Widget appContent = MediaQuery(
            data: mediaQueryData, // Provide the modified MediaQuery data
            child: Directionality(
              textDirection: textDirection, // Set the text direction
              child: child!, // Remove SafeArea from here
            ),
          );

          // Set global dev mode spacer
          globalDevModeSpacer = effectiveDevModeSpacer;

          // Create overlays - grid should be on top of everything
          final overlays = <Widget>[];

          // First add the app content with SafeArea
          overlays.add(SafeArea(bottom: true, top: false, child: appContent));

          // Then add grid overlay on top if enabled
          if (effectiveDevModeGrid) {
            final devGridOverlay =
                const DevGridOverlay(margin: 0, columnWidth: 16);
            overlays.add(devGridOverlay);
          }

          appContent = Stack(
            fit: StackFit.expand,
            children: overlays,
          );

          return appContent;
        },
    );
  }
}
