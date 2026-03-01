import 'dart:io';

import 'package:path/path.dart' as p;

import '../context/template_context.dart';
import '../templates/app/app_config_template.dart';
import '../templates/app/app_template.dart';
import '../templates/app/di_template.dart';
import '../templates/app/main_template.dart';
import '../templates/app/routes_template.dart';
import '../templates/config/analysis_options_template.dart';
import '../templates/config/gitignore_template.dart';
import '../templates/config/pubspec_template.dart';
import '../templates/config/slang_template.dart';
import '../templates/cursor/cursor_templates.dart';
import '../templates/i18n/i18n_template.dart';
import '../templates/platform/android_manifest_template.dart';
import '../templates/platform/info_plist_template.dart';
import '../templates/theme/theme_templates.dart';
import '../templates/views/home_templates.dart';
import '../templates/views/profile_templates.dart';
import '../templates/views/settings_templates.dart';
import '../utils/cli_logger.dart';
import '../utils/process_runner.dart';

/// Orchestrates the full project generation process.
class ProjectGenerator {
  ProjectGenerator._();

  /// Generates a complete MasterFabric project at [outputDir]/[context.projectName].
  static Future<bool> generate({
    required TemplateContext context,
    required String outputDir,
  }) async {
    final String projectPath = p.join(outputDir, context.projectName);

    // Step 1: flutter create
    CliLogger.step('Creating Flutter project scaffold...');
    final created = await ProcessRunner.flutterCreate(
      projectName: context.projectName,
      organization: context.organization,
      workingDir: outputDir,
    );
    if (!created) return false;

    // Step 2: Overlay MasterFabric files
    CliLogger.step('Applying MasterFabric architecture...');

    _writeAppFiles(projectPath, context);
    _writeViewFiles(projectPath, context);
    _writeThemeFiles(projectPath, context);
    _writeConfigFiles(projectPath, context);
    _writeAssetFiles(projectPath, context);
    _modifyPlatformFiles(projectPath, context);
    _writeCursorFiles(projectPath, context);

    // Step 3: flutter pub get
    final pubGet = await ProcessRunner.flutterPubGet(projectPath);
    if (!pubGet) {
      CliLogger.warning('flutter pub get failed; you can run it manually.');
    }

    // Step 4: build_runner (best-effort; may fail if masterfabric_core is not resolvable)
    CliLogger.step('Running code generation (build_runner)...');
    final buildRunner = await ProcessRunner.buildRunnerBuild(projectPath);
    if (!buildRunner) {
      CliLogger.warning(
        'build_runner failed. Run manually after resolving dependencies:\n'
        '  cd ${context.projectName}\n'
        '  dart run build_runner build --delete-conflicting-outputs',
      );
    }

    // Step 5: Remove unsupported platform directories.
    // masterfabric_core only supports iOS and Android.
    _removeUnsupportedPlatforms(projectPath);

    return true;
  }

  // ---------------------------------------------------------------------------
  // App files
  // ---------------------------------------------------------------------------

  static void _writeAppFiles(String root, TemplateContext ctx) {
    _write(p.join(root, 'lib', 'main.dart'), MainTemplate.generate(ctx));
    _write(p.join(root, 'lib', 'app', 'app.dart'), AppTemplate.generate(ctx));
    _write(
      p.join(root, 'lib', 'app', 'di', 'injection.dart'),
      DiTemplate.generate(ctx),
    );
    _write(
      p.join(root, 'lib', 'app', 'routes.dart'),
      RoutesTemplate.generate(ctx),
    );
  }

  // ---------------------------------------------------------------------------
  // View files
  // ---------------------------------------------------------------------------

  static void _writeViewFiles(String root, TemplateContext ctx) {
    final String views = p.join(root, 'lib', 'views');

    // Home
    _write(p.join(views, 'home', 'home_view.dart'), HomeTemplates.view(ctx));
    _write(
      p.join(views, 'home', 'cubit', 'home_cubit.dart'),
      HomeTemplates.cubit(ctx),
    );
    _write(
      p.join(views, 'home', 'cubit', 'home_state.dart'),
      HomeTemplates.state(ctx),
    );

    // Profile
    _write(
      p.join(views, 'profile', 'profile_view.dart'),
      ProfileTemplates.view(ctx),
    );
    _write(
      p.join(views, 'profile', 'cubit', 'profile_cubit.dart'),
      ProfileTemplates.cubit(ctx),
    );
    _write(
      p.join(views, 'profile', 'cubit', 'profile_state.dart'),
      ProfileTemplates.state(ctx),
    );

    // Settings
    _write(
      p.join(views, 'settings', 'settings_view.dart'),
      SettingsTemplates.view(ctx),
    );
    _write(
      p.join(views, 'settings', 'cubit', 'theme_cubit.dart'),
      SettingsTemplates.themeCubit(ctx),
    );
    _write(
      p.join(views, 'settings', 'cubit', 'theme_state.dart'),
      SettingsTemplates.themeState(ctx),
    );
  }

  // ---------------------------------------------------------------------------
  // Theme files
  // ---------------------------------------------------------------------------

  static void _writeThemeFiles(String root, TemplateContext ctx) {
    _write(
      p.join(root, 'lib', 'theme', 'app_theme.dart'),
      ThemeTemplates.appTheme(ctx),
    );
    _write(
      p.join(root, 'lib', 'theme', 'theme_builder.dart'),
      ThemeTemplates.themeBuilder(ctx),
    );
  }

  // ---------------------------------------------------------------------------
  // Config files (pubspec, slang, analysis_options, gitignore)
  // ---------------------------------------------------------------------------

  static void _writeConfigFiles(String root, TemplateContext ctx) {
    _write(p.join(root, 'pubspec.yaml'), PubspecTemplate.generate(ctx));
    _write(p.join(root, 'slang.yaml'), SlangTemplate.generate(ctx));
    _write(
      p.join(root, 'analysis_options.yaml'),
      AnalysisOptionsTemplate.generate(ctx),
    );
    _write(p.join(root, '.gitignore'), GitignoreTemplate.generate(ctx));
  }

  // ---------------------------------------------------------------------------
  // Asset files
  // ---------------------------------------------------------------------------

  static void _writeAssetFiles(String root, TemplateContext ctx) {
    _write(
      p.join(root, 'assets', 'app_config.json'),
      AppConfigTemplate.generate(ctx),
    );
    _write(
      p.join(root, 'assets', 'i18n', 'en.i18n.json'),
      I18nTemplate.generate(ctx),
    );
  }

  // ---------------------------------------------------------------------------
  // Platform files (AndroidManifest.xml, Info.plist)
  // ---------------------------------------------------------------------------

  static void _modifyPlatformFiles(String root, TemplateContext ctx) {
    // Android: replace the generated AndroidManifest.xml
    final manifestPath =
        p.join(root, 'android', 'app', 'src', 'main', 'AndroidManifest.xml');
    _write(manifestPath, AndroidManifestTemplate.generate(ctx));

    // iOS: inject permission keys into Info.plist
    final plistPath = p.join(root, 'ios', 'Runner', 'Info.plist');
    final plistFile = File(plistPath);
    if (plistFile.existsSync()) {
      var content = plistFile.readAsStringSync();
      final permissionSnippet = InfoPlistTemplate.permissionKeys(ctx);
      if (!content.contains('NSCameraUsageDescription')) {
        content = content.replaceFirst(
          '</dict>\n</plist>',
          '$permissionSnippet\n</dict>\n</plist>',
        );
        plistFile.writeAsStringSync(content);
        CliLogger.fileModified(plistPath);
      }
    }
  }

  // ---------------------------------------------------------------------------
  // Cursor IDE files
  // ---------------------------------------------------------------------------

  static void _writeCursorFiles(String root, TemplateContext ctx) {
    // .cursor-plugin/plugin.json
    _write(
      p.join(root, '.cursor-plugin', 'plugin.json'),
      CursorTemplates.pluginJson(ctx),
    );

    // .cursor/AGENTS.md
    _write(
      p.join(root, '.cursor', 'AGENTS.md'),
      CursorTemplates.agentsMd(ctx),
    );

    // .cursor/mcp/mcp.json
    _write(
      p.join(root, '.cursor', 'mcp', 'mcp.json'),
      CursorTemplates.mcpJson(),
    );

    // .cursor/agents/flutter-architecture.md
    _write(
      p.join(root, '.cursor', 'agents', 'flutter-architecture.md'),
      CursorTemplates.flutterArchitectureAgent(),
    );

    // .cursor/skills/base-pattern-documentation/SKILL.md
    _write(
      p.join(root, '.cursor', 'skills', 'base-pattern-documentation',
          'SKILL.md'),
      CursorTemplates.basePatternSkill(),
    );

    // .cursor/rules/
    for (final entry in CursorTemplates.rules.entries) {
      _write(
        p.join(root, '.cursor', 'rules', entry.key),
        entry.value,
      );
    }

    // AGENTS.md at root pointing to .cursor/AGENTS.md
    _write(
      p.join(root, 'AGENTS.md'),
      '# ${ctx.projectNamePascal} - AI Agent Guide\n\n'
          "This project's development guide has been moved to "
          '**`.cursor/AGENTS.md`**.\n\n'
          'For AI coding agents: read `.cursor/AGENTS.md` for project '
          'conventions, build commands, architecture, and code style '
          'guidelines.\n',
    );
  }

  // ---------------------------------------------------------------------------
  // Platform cleanup
  // ---------------------------------------------------------------------------

  static const _unsupportedPlatforms = ['web', 'macos', 'linux', 'windows'];

  static void _removeUnsupportedPlatforms(String root) {
    CliLogger.step('Cleaning up unsupported platform directories...');
    for (final platform in _unsupportedPlatforms) {
      final dir = Directory(p.join(root, platform));
      if (dir.existsSync()) {
        dir.deleteSync(recursive: true);
        CliLogger.warning('Removed $platform/ (not supported by masterfabric_core)');
      }
    }
    CliLogger.success('Only iOS and Android platforms retained');
  }

  // ---------------------------------------------------------------------------
  // Helpers
  // ---------------------------------------------------------------------------

  static void _write(String filePath, String content) {
    final file = File(filePath);
    file.parent.createSync(recursive: true);
    file.writeAsStringSync(content);
    CliLogger.fileCreated(filePath);
  }
}
