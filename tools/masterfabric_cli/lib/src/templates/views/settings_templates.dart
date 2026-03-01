import '../../context/template_context.dart';

/// Templates for the settings feature: view, theme cubit, theme state.
class SettingsTemplates {
  SettingsTemplates._();

  static String themeState(TemplateContext ctx) => '''
import 'package:equatable/equatable.dart';

enum AppThemeMode { light, dark, system }

class ThemeState extends Equatable {
  final AppThemeMode themeMode;
  final double fontScale;

  const ThemeState({
    this.themeMode = AppThemeMode.light,
    this.fontScale = 1.0,
  });

  ThemeState copyWith({
    AppThemeMode? themeMode,
    double? fontScale,
  }) {
    return ThemeState(
      themeMode: themeMode ?? this.themeMode,
      fontScale: fontScale ?? this.fontScale,
    );
  }

  @override
  List<Object?> get props => [themeMode, fontScale];
}
''';

  static String themeCubit(TemplateContext ctx) => '''
import 'package:masterfabric_core/masterfabric_core.dart';

import 'theme_state.dart';

class ThemeCubit extends BaseViewModelCubit<ThemeState> {
  ThemeCubit() : super(const ThemeState());

  void setThemeMode(AppThemeMode mode) {
    stateChanger(state.copyWith(themeMode: mode));
  }

  void setFontScale(double scale) {
    stateChanger(state.copyWith(fontScale: scale));
  }

  void toggleTheme() {
    final newMode = state.themeMode == AppThemeMode.light
        ? AppThemeMode.dark
        : AppThemeMode.light;
    stateChanger(state.copyWith(themeMode: newMode));
  }
}
''';

  static String view(TemplateContext ctx) => '''
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'cubit/theme_cubit.dart';
import 'cubit/theme_state.dart';

class SettingsView extends StatelessWidget {
  final Function(String) goRoute;

  const SettingsView({super.key, required this.goRoute});

  @override
  Widget build(BuildContext context) {
    final themeCubit = GetIt.I<ThemeCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Appearance',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          StreamBuilder<ThemeState>(
            stream: themeCubit.stream,
            initialData: themeCubit.state,
            builder: (context, snapshot) {
              final themeState = snapshot.data ?? const ThemeState();
              return SwitchListTile(
                title: const Text('Dark Mode'),
                value: themeState.themeMode == AppThemeMode.dark,
                onChanged: (_) => themeCubit.toggleTheme(),
              );
            },
          ),
        ],
      ),
    );
  }
}
''';
}
