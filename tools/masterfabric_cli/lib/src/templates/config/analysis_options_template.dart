import '../../context/template_context.dart';

/// Template for `analysis_options.yaml`.
class AnalysisOptionsTemplate {
  AnalysisOptionsTemplate._();

  static String generate(TemplateContext ctx) => '''
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    prefer_const_constructors: true
    prefer_const_declarations: true
    avoid_print: false
    prefer_single_quotes: true
''';
}
