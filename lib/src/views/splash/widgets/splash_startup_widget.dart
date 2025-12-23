import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterfabric_core/src/views/splash/cubit/splash_cubit.dart';
import 'package:masterfabric_core/src/views/splash/cubit/splash_state.dart';

/// 🚀 **OSMEA Splash Startup Widget**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Basic splash style - Logo centered, loading indicator below
/// Clean and simple design with app branding
///
/// {@category Widgets}
/// {@subCategory SplashStartup}

class SplashStartupWidget extends StatelessWidget {
  final VoidCallback? onLogoTap;

  const SplashStartupWidget({
    super.key,
    this.onLogoTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        if (state.config == null) {
          return const SizedBox.shrink();
        }

        return SizedBox.expand(
          child: Container(
            color: _getBackgroundColor(context, state),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 🎯 Main content area
                  Expanded(
                    child: _buildMainContent(context, state),
                  ),

                  // 📊 Bottom section - Loading and info
                  _buildBottomSection(context, state),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// 🎨 Get background color from config
  Color _getBackgroundColor(BuildContext context, SplashState state) {
    final config = state.config;
    if (config?.backgroundColor != null) {
      try {
        String colorString = config!.backgroundColor!;
        // Handle both 6-digit (#RRGGBB) and 8-digit (#RRGGBBAA) hex colors
        if (colorString.startsWith('#')) {
          colorString = colorString.substring(1); // Remove #
          if (colorString.length == 8) {
            // 8-digit hex: RRGGBBAA - keep as is, just add FF prefix for full opacity
            return Color(
                int.parse('FF${colorString.substring(0, 6)}', radix: 16));
          } else if (colorString.length == 6) {
            // 6-digit hex: RRGGBB - add FF prefix for full opacity
            return Color(int.parse('FF$colorString', radix: 16));
          }
        }
      } catch (e) {
        debugPrint('⚠️ Invalid background color: ${config!.backgroundColor}');
      }
    }
    return Colors.grey.shade50;
  }

  /// 🎯 Main content area with logo and app info
  Widget _buildMainContent(BuildContext context, SplashState state) {
    final config = state.config!;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 🖼️ App Logo (tappable for dev mode)
          GestureDetector(
            onTap: onLogoTap,
            child: config.logoUrl.isNotEmpty
                ? Image.network(
                    config.logoUrl,
                    width: config.logoWidth,
                    height: config.logoHeight,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return SizedBox(
                        width: config.logoWidth,
                        height: config.logoHeight,
                      );
                    },
                  )
                : SizedBox(
                    width: config.logoWidth,
                    height: config.logoHeight,
                  ),
          ),

          const SizedBox(height: 24),

          // 📱 App Name
          if (config.appName != null)
            Text(
              config.appName!,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: _getTextColor(context, state),
                  ),
              textAlign: TextAlign.center,
            ),

          // 📱 App Version (if enabled)
          if (config.showAppVersion && config.appVersion != null) ...[
            const SizedBox(height: 8),
            Text(
              'v${config.appVersion!}',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: _getTextColor(context, state).withValues(alpha: 0.6),
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }

  /// 📊 Bottom section with loading indicator and text
  Widget _buildBottomSection(BuildContext context, SplashState state) {
    final config = state.config!;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // 🔄 Loading indicator and text
          if (config.showLoadingIndicator) ...[
            SizedBox(
              width: config.loadingIndicatorSize.toDouble(),
              height: config.loadingIndicatorSize.toDouble(),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  _getPrimaryColor(context, state),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              config.loadingText,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: _getTextColor(context, state).withValues(alpha: 0.6),
                  ),
              textAlign: TextAlign.center,
            ),
          ],

          // © Copyright text (if enabled)
          if (config.showCopyright) ...[
            const SizedBox(height: 32),
            Text(
              config.copyrightText,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: _getTextColor(context, state).withValues(alpha: 0.4),
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }

  /// 🎨 Get text color from config
  Color _getTextColor(BuildContext context, SplashState state) {
    final config = state.config;
    if (config?.textColor != null) {
      try {
        String colorString = config!.textColor!;
        // Handle both 6-digit (#RRGGBB) and 8-digit (#RRGGBBAA) hex colors
        if (colorString.startsWith('#')) {
          colorString = colorString.substring(1); // Remove #
          if (colorString.length == 8) {
            // 8-digit hex: RRGGBBAA - keep as is, just add FF prefix for full opacity
            return Color(
                int.parse('FF${colorString.substring(0, 6)}', radix: 16));
          } else if (colorString.length == 6) {
            // 6-digit hex: RRGGBB - add FF prefix for full opacity
            return Color(int.parse('FF$colorString', radix: 16));
          }
        }
      } catch (e) {
        debugPrint('⚠️ Invalid text color: ${config!.textColor}');
      }
    }
    return Colors.black87;
  }

  /// 🎨 Get primary color from config
  Color _getPrimaryColor(BuildContext context, SplashState state) {
    final config = state.config;
    if (config?.primaryColor != null) {
      try {
        String colorString = config!.primaryColor!;
        // Handle both 6-digit (#RRGGBB) and 8-digit (#RRGGBBAA) hex colors
        if (colorString.startsWith('#')) {
          colorString = colorString.substring(1); // Remove #
          if (colorString.length == 8) {
            // 8-digit hex: RRGGBBAA - keep as is, just add FF prefix for full opacity
            return Color(
                int.parse('FF${colorString.substring(0, 6)}', radix: 16));
          } else if (colorString.length == 6) {
            // 6-digit hex: RRGGBB - add FF prefix for full opacity
            return Color(int.parse('FF$colorString', radix: 16));
          }
        }
      } catch (e) {
        debugPrint('⚠️ Invalid primary color: ${config!.primaryColor}');
      }
    }
    return Colors.blue;
  }
}
