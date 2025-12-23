import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterfabric_core/src/views/splash/cubit/splash_cubit.dart';
import 'package:masterfabric_core/src/views/splash/cubit/splash_state.dart';

/// 🚀 **OSMEA Splash Space Widget**
///
/// Ultra-minimalist splash style - Pure text-based design
/// Clean typography-focused layout with minimal visual elements
///
/// {@category Widgets}
/// {@subCategory SplashSpace}
class SplashSpaceWidget extends StatelessWidget {
  final VoidCallback? onLogoTap;

  const SplashSpaceWidget({
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
        return Scaffold(
          backgroundColor: _getBackgroundColor(context, state),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 🖼️ Logo (if provided, ultra-minimal style)
                if (state.config!.logoUrl.isNotEmpty)
                  GestureDetector(
                    onTap: onLogoTap,
                    child: Container(
                      width: state.config!.logoWidth,
                      height: state.config!.logoHeight,
                      child: Image.network(
                        state.config!.logoUrl,
                        width: state.config!.logoWidth,
                        height: state.config!.logoHeight,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return SizedBox(
                            width: state.config!.logoWidth,
                            height: state.config!.logoHeight,
                          );
                        },
                      ),
                    ),
                  ),

                // Spacing between logo and app name
                if (state.config!.logoUrl.isNotEmpty &&
                    state.config!.appName != null)
                  const SizedBox(height: 32),

                // 📱 App name with space-style typography
                if (state.config!.appName != null)
                  GestureDetector(
                    onTap: onLogoTap,
                    child: Text(
                      state.config!.appName!.toUpperCase(),
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.w100,
                            color: _getTextColor(context, state),
                            letterSpacing: 4.0,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
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
    return const Color(0xFF000000); // Default black for space theme
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
    return const Color(0xFFFFFFFF); // Default white text for space theme
  }
}
