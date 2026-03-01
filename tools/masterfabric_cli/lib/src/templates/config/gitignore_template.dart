import '../../context/template_context.dart';

/// Template for `.gitignore`.
class GitignoreTemplate {
  GitignoreTemplate._();

  static String generate(TemplateContext ctx) => '''
# Miscellaneous
*.class
*.log
*.pyc
*.swp
.DS_Store
.atom/
.buildlog/
.history
.svn/
migrate_working_dir/

# IntelliJ related
*.iml
*.ipr
*.iws
.idea/

# VS Code related
.vscode/

# Flutter/Dart/Pub related
**/doc/api/
**/ios/Flutter/.last_build_id
.dart_tool/
.flutter-plugins
.flutter-plugins-dependencies
.packages
.pub-cache/
.pub/
/build/
pubspec.lock

# Symbolication related
app.*.symbols

# Obfuscation related
app.*.map.json

# Generated files
*.g.dart
*.config.dart
*.freezed.dart
''';
}
