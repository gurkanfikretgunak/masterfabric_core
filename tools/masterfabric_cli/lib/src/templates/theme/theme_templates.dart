import '../../context/template_context.dart';

/// Templates for `lib/theme/`.
class ThemeTemplates {
  ThemeTemplates._();

  static String appTheme(TemplateContext ctx) => '''
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFF2196F3);
  static const Color secondaryColor = Color(0xFF03DAC6);
  static const Color errorColor = Color(0xFFB00020);

  static const double defaultPadding = 16.0;
  static const double defaultRadius = 12.0;

  static final BorderRadius defaultBorderRadius =
      BorderRadius.circular(defaultRadius);
}
''';

  static String themeBuilder(TemplateContext ctx) => '''
import 'package:flutter/material.dart';

import '../views/settings/cubit/theme_state.dart';
import 'app_theme.dart';

class ThemeBuilder {
  ThemeBuilder._();

  static ThemeData buildTheme(ThemeState themeState) {
    final bool isDark = themeState.themeMode == AppThemeMode.dark;

    return ThemeData(
      useMaterial3: true,
      brightness: isDark ? Brightness.dark : Brightness.light,
      colorSchemeSeed: AppTheme.primaryColor,
      fontFamily: null,
    );
  }
}
''';
}
