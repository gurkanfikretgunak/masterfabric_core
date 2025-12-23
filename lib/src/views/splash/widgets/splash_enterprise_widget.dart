import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterfabric_core/src/views/splash/cubit/splash_cubit.dart';
import 'package:masterfabric_core/src/views/splash/cubit/splash_state.dart';

/// 🚀 **OSMEA Splash Enterprise Widget**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Professional splash style - Corporate card-based design with professional aesthetics
/// Features: Card layouts, professional typography, corporate color schemes, loading indicators
///
/// {@category Widgets}
/// {@subCategory SplashEnterprise}

class SplashEnterpriseWidget extends StatelessWidget {
  final VoidCallback? onLogoTap;

  const SplashEnterpriseWidget({
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

        return Container(
          color: _getBackgroundColor(state),
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 16.0,
              ),
              child: Column(
                children: [
                  // 📱 Professional header with branding
                  _buildEnterpriseHeader(context, state),

                  // 📄 Main content area with card layout
                  Expanded(
                    child: _buildCardContent(context, state),
                  ),

                  // 🔘 Professional footer with loading
                  _buildEnterpriseFooter(context, state),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// 🎨 Get background color from config
  Color _getBackgroundColor(SplashState state) {
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
    return Colors.grey.shade50; // Default for enterprise theme
  }

  /// 🎨 Get enterprise color scheme
  Color _getEnterprisePrimaryColor(SplashState state) {
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

  /// 🎨 Get text color from config
  Color _getTextColor(SplashState state) {
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

  /// 📱 Professional header section
  Widget _buildEnterpriseHeader(BuildContext context, SplashState state) {
    final primaryColor = _getEnterprisePrimaryColor(state);

    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // OSMEA Logo area
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'OSMEA',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),

          // App version (if enabled)
          if (state.config!.showAppVersion && state.config!.appVersion != null)
            Text(
              'v${state.config!.appVersion!}',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
            ),
        ],
      ),
    );
  }

  /// 📄 Card-based content area
  Widget _buildCardContent(BuildContext context, SplashState state) {
    final config = state.config!;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 16.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 8.0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 🖼️ Professional logo area
                _buildEnterpriseLogo(context, state),

                const SizedBox(height: 24),

                // 📝 App name with enterprise typography
                if (config.appName != null)
                  Text(
                    config.appName!,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: _getTextColor(state),
                          fontWeight: FontWeight.w600,
                        ),
                    textAlign: TextAlign.center,
                  ),

                const SizedBox(height: 16),

                // 🎯 Feature highlights
                _buildFeatureHighlights(context, state),

                const SizedBox(height: 24),

                // 📊 Professional loading indicator
                if (config.showLoadingIndicator)
                  _buildEnterpriseLoadingIndicator(context, state),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 🖼️ Enterprise logo element
  Widget _buildEnterpriseLogo(BuildContext context, SplashState state) {
    final config = state.config!;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.15,
      child: Center(
        child: GestureDetector(
          onTap: onLogoTap,
          child: Container(
            width: config.logoWidth,
            height: config.logoHeight,
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 8.0,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: config.logoUrl.isNotEmpty
                  ? Image.network(
                      config.logoUrl,
                      width: config.logoWidth * 0.8,
                      height: config.logoHeight * 0.8,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return SizedBox(
                          width: config.logoWidth * 0.8,
                          height: config.logoHeight * 0.8,
                        );
                      },
                    )
                  : SizedBox(
                      width: config.logoWidth * 0.8,
                      height: config.logoHeight * 0.8,
                    ),
            ),
          ),
        ),
      ),
    );
  }

  /// 🎯 Feature highlights for professional look
  Widget _buildFeatureHighlights(BuildContext context, SplashState state) {
    final primaryColor = _getEnterprisePrimaryColor(state);

    return Container(
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.0,
        runSpacing: 8.0,
        children: [
          _buildFeatureBadge(context, 'Secure', Icons.security, primaryColor),
          _buildFeatureBadge(
              context, 'Professional', Icons.business_center, primaryColor),
          _buildFeatureBadge(context, 'Reliable', Icons.verified, primaryColor),
        ],
      ),
    );
  }

  /// 🏷️ Feature badge
  Widget _buildFeatureBadge(
      BuildContext context, String label, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16.0,
            color: color,
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: color,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }

  /// 📊 Professional loading indicator
  Widget _buildEnterpriseLoadingIndicator(
      BuildContext context, SplashState state) {
    final config = state.config!;
    final primaryColor = _getEnterprisePrimaryColor(state);

    return Container(
      child: Column(
        children: [
          // Professional loading indicator
          SizedBox(
            width: config.loadingIndicatorSize.toDouble(),
            height: config.loadingIndicatorSize.toDouble(),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
            ),
          ),

          const SizedBox(height: 16),

          // Loading text with professional styling
          Text(
            config.loadingText,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  /// 🔘 Professional footer with copyright
  Widget _buildEnterpriseFooter(BuildContext context, SplashState state) {
    final config = state.config!;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        children: [
          // Copyright text (if enabled)
          if (config.showCopyright)
            Text(
              config.copyrightText,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                  ),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}
