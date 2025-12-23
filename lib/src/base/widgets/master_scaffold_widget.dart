import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:masterfabric_core/src/helper/grid_helper.dart';
import 'package:osmea_components/osmea_components.dart';

/// 🏗️ Flexible scaffold widget that adapts based on parameters
///
/// This widget provides a common layout structure for MasterView classes
/// with full customization capabilities. All parameters are optional and
/// maintain backward compatibility with original hardcoded behavior.
///
/// ## 🚀 Basic Usage
/// ```dart
/// MasterScaffoldWidget(
///   scaffoldMessengerKey: GlobalKey<ScaffoldMessengerState>(),
///   appBar: AppBar(title: Text('My App')),
///   body: MyContent(),
/// )
/// ```
///
/// ## 🎨 Custom Layout Example
/// ```dart
/// MasterScaffoldWidget(
///   scaffoldMessengerKey: key,
///   appBar: appBar,
///   body: content,
///   useSafeArea: false,                    // 🔧 Disable SafeArea
///   extendBody: false,                     // 🔧 Disable body extension
///   navbarSpacer: const SpacerVisibility.enabled(type: CoreSpacerType.content),
///   footerSpacer: const SpacerVisibility.disabled(),  // 🚫 No footer spacer
///   horizontalPadding: const PaddingVisibility.enabled(value: 24.0), // 📏 Custom padding
/// )
/// ```
///
/// ## 🎯 Minimal Layout Example
/// ```dart
/// MasterScaffoldWidget(
///   scaffoldMessengerKey: key,
///   body: content,
///   navbarSpacer: const SpacerVisibility.disabled(),   // 🚫 No spacers
///   footerSpacer: const SpacerVisibility.disabled(),   // 🚫 No spacers
///   horizontalPadding: const PaddingVisibility.disabled(), // 🚫 No padding
/// )
/// ```
///
/// ## 📱 App Bar Padding Example (SafeArea disabled)
/// ```dart
/// MasterScaffoldWidget(
///   scaffoldMessengerKey: key,
///   appBar: MyAppBar(),
///   body: content,
///   useSafeArea: false,                               // 🔧 Disable SafeArea
///   appBarPadding: const AppBarPaddingVisibility.enabled(value: 24.0), // 📏 Custom app bar padding
/// )
/// ```
///
/// ## 🚫 Disable App Bar Padding Example
/// ```dart
/// MasterScaffoldWidget(
///   scaffoldMessengerKey: key,
///   appBar: MyAppBar(),
///   body: content,
///   useSafeArea: false,                               // 🔧 Disable SafeArea
///   appBarPadding: const AppBarPaddingVisibility.disabled(), // 🚫 No app bar padding
/// )
/// ```
///
/// ## 🎨 Background Color Example
/// ```dart
/// MasterScaffoldWidget(
///   scaffoldMessengerKey: key,
///   body: content,
///   backgroundColor: OsmeaColors.nordicBlue,         // 🎨 Custom background color
/// )
/// ```
class MasterScaffoldWidget extends StatelessWidget {
  // 🔑 Required parameters
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;

  // 🎛️ Core scaffold parameters (optional with defaults)
  final bool? extendBody; // Default: true
  final bool? extendBodyBehindAppBar; // Default: true
  final bool? useSafeArea; // Default: true
  final Color? backgroundColor; // Default: OsmeaColors.white

  // 🎨 Layout configuration via custom value options
  final SpacerVisibility? navbarSpacer; // Top spacer configuration
  final SpacerVisibility? footerSpacer; // Bottom spacer configuration
  final PaddingVisibility?
      horizontalPadding; // Horizontal padding configuration
  final PaddingVisibility? verticalPadding; // Vertical padding configuration
  final AppBarPaddingVisibility?
      appBarPadding; // App bar padding configuration (when SafeArea disabled)

  // 🔧 Spacer types - custom overrides default
  final CoreSpacerType? customNavbarSpacerType; // Custom navbar spacer type
  final CoreSpacerType? customFooterSpacerType; // Custom footer spacer type
  final CoreSpacerType defaultNavbarSpacerType; // Default navbar spacer type
  final CoreSpacerType defaultFooterSpacerType; // Default footer spacer type

  // 📏 Padding values - custom overrides default
  final double? customHorizontalPadding; // Custom horizontal padding value
  final double defaultHorizontalPadding; // Default horizontal padding value
  final double? customVerticalPadding; // Custom vertical padding value
  final double defaultVerticalPadding; // Default vertical padding value
  final double? customAppBarPadding; // Custom app bar padding value
  final double defaultAppBarPadding; // Default app bar padding value

  const MasterScaffoldWidget({
    super.key,
    // 🔑 Required parameters
    required this.scaffoldMessengerKey,
    this.appBar,
    required this.body,
    this.bottomNavigationBar,

    // 🎛️ Core scaffold parameters (optional with defaults)
    this.extendBody, // Default: true
    this.extendBodyBehindAppBar, // Default: true
    this.useSafeArea, // Default: true
    this.backgroundColor, // Default: OsmeaColors.white

    // 🎨 Layout configuration
    this.navbarSpacer, // Top spacer configuration
    this.footerSpacer, // Bottom spacer configuration
    this.horizontalPadding, // Horizontal padding configuration
    this.verticalPadding, // Vertical padding configuration
    this.appBarPadding, // App bar padding configuration

    // 🔧 Spacer type overrides
    this.customNavbarSpacerType, // Custom navbar spacer type
    this.customFooterSpacerType, // Custom footer spacer type
    this.defaultNavbarSpacerType = CoreSpacerType.navbar, // Default navbar type
    this.defaultFooterSpacerType = CoreSpacerType.footer, // Default footer type

    // 📏 Padding value overrides
    this.customHorizontalPadding, // Custom horizontal padding value
    this.defaultHorizontalPadding =
        GridHelper.defaultMargin, // Default padding value
    this.customVerticalPadding, // Custom vertical padding value
    this.defaultVerticalPadding = 16.0, // Default vertical padding value
    this.customAppBarPadding, // Custom app bar padding value
    this.defaultAppBarPadding = 16.0, // Default app bar padding value
  });

  @override
  Widget build(BuildContext context) {
    // 🎯 Resolve effective configuration purely from external parameters
    final config = _LayoutConfig(
      navbarSpacer:
          (navbarSpacer ?? const SpacerVisibility.enabled()).withDefaultType(
        fallback: customNavbarSpacerType ?? defaultNavbarSpacerType,
      ),
      footerSpacer:
          (footerSpacer ?? const SpacerVisibility.enabled()).withDefaultType(
        fallback: customFooterSpacerType ?? defaultFooterSpacerType,
      ),
      horizontalPadding:
          (horizontalPadding ?? const PaddingVisibility.enabled()).withDefault(
        fallback: customHorizontalPadding ?? defaultHorizontalPadding,
      ),
      verticalPadding:
          (verticalPadding ?? const PaddingVisibility.enabled()).withDefault(
        fallback: customVerticalPadding ?? defaultVerticalPadding,
      ),
      appBarPadding: (appBarPadding ?? const AppBarPaddingVisibility.enabled())
          .withDefault(
        fallback: customAppBarPadding ?? defaultAppBarPadding,
      ),
    );

    return Scaffold(
      // 🎛️ Apply scaffold parameters with defaults
      extendBody: extendBody ?? true,
      extendBodyBehindAppBar: extendBodyBehindAppBar ?? true,
      backgroundColor: backgroundColor ?? OsmeaColors.white,
      key: scaffoldMessengerKey,
      appBar: appBar != null &&
              (useSafeArea ?? true) == false &&
              config.appBarPadding.isEnabled
          ? PreferredSize(
              preferredSize: Size.fromHeight(
                  appBar!.preferredSize.height + config.appBarPadding.value),
              child: Padding(
                padding: EdgeInsets.only(top: config.appBarPadding.value),
                child: appBar!,
              ),
            )
          : appBar,

      // 🏗️ Build body with conditional SafeArea wrapper
      body: (useSafeArea ?? true)
          ? SafeArea(
              child: Column(
                children: [
                  // 🔝 Navbar spacer - based on configuration
                  if (config.navbarSpacer.isEnabled)
                    CoreSpacer(config.navbarSpacer.type),

                  // 📱 Main content with configurable padding
                  Expanded(
                    child: _buildPaddedBody(config),
                  ),

                  // 🔻 Footer spacer - based on configuration
                  if (config.footerSpacer.isEnabled)
                    CoreSpacer(config.footerSpacer.type),
                ],
              ),
            )
          : _buildBodyWithoutSafeArea(config, body),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  /// 🏗️ Builds body without SafeArea, with optional app bar padding
  Widget _buildBodyWithoutSafeArea(_LayoutConfig config, Widget body) {
    return Column(
      children: [
        // 🔝 Navbar spacer - based on configuration (no SafeArea)
        if (config.navbarSpacer.isEnabled) CoreSpacer(config.navbarSpacer.type),

        // 📱 Main content with configurable padding (no SafeArea)
        Expanded(
          child: _buildPaddedBody(config),
        ),

        // 🔻 Footer spacer - based on configuration (no SafeArea)
        if (config.footerSpacer.isEnabled) CoreSpacer(config.footerSpacer.type),
      ],
    );
  }

  /// 📱 Build body with combined horizontal and vertical padding
  Widget _buildPaddedBody(_LayoutConfig config) {
    Widget paddedBody = body;

    // Apply vertical padding if enabled
    if (config.verticalPadding.isEnabled) {
      paddedBody = Padding(
        padding: EdgeInsets.symmetric(vertical: config.verticalPadding.value),
        child: paddedBody,
      );
    }

    // Apply horizontal padding if enabled
    if (config.horizontalPadding.isEnabled) {
      paddedBody = Padding(
        padding:
            EdgeInsets.symmetric(horizontal: config.horizontalPadding.value),
        child: paddedBody,
      );
    }

    return paddedBody;
  }

  // No presets: config is resolved above from external parameters only
}

/// 🔧 Internal layout configuration class
///
/// Holds the resolved configuration for spacers and padding
/// after applying custom values and fallbacks.
class _LayoutConfig {
  final SpacerVisibility navbarSpacer;
  final SpacerVisibility footerSpacer;
  final PaddingVisibility horizontalPadding;
  final PaddingVisibility verticalPadding;
  final AppBarPaddingVisibility appBarPadding;

  const _LayoutConfig({
    required this.navbarSpacer,
    required this.footerSpacer,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.appBarPadding,
  });
}

/// 🎨 Option type for spacer visibility and custom type
///
/// Provides a clean API for configuring spacer visibility and type.
///
/// ## Usage Examples:
/// ```dart
/// // ✅ Enabled with default type
/// const SpacerVisibility.enabled()
///
/// // ✅ Enabled with custom type
/// const SpacerVisibility.enabled(type: CoreSpacerType.content)
///
/// // ❌ Disabled
/// const SpacerVisibility.disabled()
/// ```
class SpacerVisibility {
  final bool isEnabled;
  final CoreSpacerType? _type;

  const SpacerVisibility._(this.isEnabled, this._type);
  const SpacerVisibility.enabled({CoreSpacerType? type}) : this._(true, type);
  const SpacerVisibility.disabled() : this._(false, null);

  /// 🎯 Get the effective spacer type (custom or default)
  CoreSpacerType get type => _type ?? CoreSpacerType.navbar;

  /// 🔄 Apply fallback type if no custom type is provided
  SpacerVisibility withDefaultType({required CoreSpacerType fallback}) {
    if (!isEnabled) return const SpacerVisibility.disabled();
    return SpacerVisibility.enabled(type: _type ?? fallback);
  }
}

/// 📏 Option type for padding visibility and custom value
///
/// Provides a clean API for configuring horizontal padding.
///
/// ## Usage Examples:
/// ```dart
/// // ✅ Enabled with default value
/// const PaddingVisibility.enabled()
///
/// // ✅ Enabled with custom value
/// const PaddingVisibility.enabled(value: 24.0)
///
/// // ❌ Disabled
/// const PaddingVisibility.disabled()
/// ```
class PaddingVisibility {
  final bool isEnabled;
  final double? _value;

  const PaddingVisibility._(this.isEnabled, this._value);
  const PaddingVisibility.enabled({double? value}) : this._(true, value);
  const PaddingVisibility.disabled() : this._(false, null);

  /// 🎯 Get the effective padding value (custom or default)
  double get value => _value ?? GridHelper.defaultMargin;

  /// 🔄 Apply fallback value if no custom value is provided
  PaddingVisibility withDefault({required double fallback}) {
    if (!isEnabled) return const PaddingVisibility.disabled();
    return PaddingVisibility.enabled(value: _value ?? fallback);
  }
}

/// 📱 Option type for app bar padding visibility and custom value
///
/// Provides a clean API for configuring app bar padding when SafeArea is disabled.
///
/// ## Usage Examples:
/// ```dart
/// // ✅ Enabled with default value (16.0)
/// const AppBarPaddingVisibility.enabled()
///
/// // ✅ Enabled with custom value
/// const AppBarPaddingVisibility.enabled(value: 24.0)
///
/// // ❌ Disabled
/// const AppBarPaddingVisibility.disabled()
/// ```
class AppBarPaddingVisibility {
  final bool isEnabled;
  final double? _value;

  const AppBarPaddingVisibility._(this.isEnabled, this._value);
  const AppBarPaddingVisibility.enabled({double? value}) : this._(true, value);
  const AppBarPaddingVisibility.disabled() : this._(false, null);

  /// 🎯 Get the effective padding value (custom or default)
  double get value => _value ?? 16.0;

  /// 🔄 Apply fallback value if no custom value is provided
  AppBarPaddingVisibility withDefault({required double fallback}) {
    if (!isEnabled) return const AppBarPaddingVisibility.disabled();
    return AppBarPaddingVisibility.enabled(value: _value ?? fallback);
  }
}
