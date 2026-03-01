import '../../context/template_context.dart';

/// Template for `assets/i18n/en.i18n.json`.
class I18nTemplate {
  I18nTemplate._();

  static String generate(TemplateContext ctx) => '''
{
  "appName": "${ctx.projectNamePascal}",
  "welcome": "Welcome",
  "home": "Home",
  "profile": "Profile",
  "settings": "Settings",
  "loading": "Loading...",
  "error": "Something went wrong",
  "retry": "Retry"
}
''';
}
