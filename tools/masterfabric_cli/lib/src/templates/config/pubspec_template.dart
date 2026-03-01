import '../../context/template_context.dart';

/// Template for the generated project's `pubspec.yaml`.
class PubspecTemplate {
  PubspecTemplate._();

  static String generate(TemplateContext ctx) => '''
name: ${ctx.projectName}
description: ${ctx.description}
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: ^3.9.2
  flutter: ">=1.17.0"

dependencies:
  flutter:
    sdk: flutter

  masterfabric_core: ${ctx.masterfabricCoreVersion}

  equatable: ^2.0.7
  get_it: ^8.3.0
  injectable: ^2.5.0

  slang: ^4.11.1
  slang_flutter: ^4.11.0
  intl: ^0.20.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
  injectable_generator: ^2.7.0
  build_runner: ^2.4.13
  slang_build_runner: ^4.8.0

flutter:
  uses-material-design: true

  assets:
    - assets/app_config.json
    - assets/i18n/
''';
}
