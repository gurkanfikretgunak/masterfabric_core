import '../../context/template_context.dart';

/// Template for `slang.yaml`.
class SlangTemplate {
  SlangTemplate._();

  static String generate(TemplateContext ctx) => '''
base_locale: en
input_directory: assets/i18n
input_file_pattern: .i18n.json
output_directory: lib/src/resources
output_file_name: resources.g.dart
''';
}
