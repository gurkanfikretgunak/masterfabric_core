/// Utility functions for converting between naming conventions.
class StringUtils {
  StringUtils._();

  /// Converts a snake_case string to PascalCase.
  /// Example: `my_cool_app` -> `MyCoolApp`
  static String snakeToPascal(String input) {
    return input
        .split('_')
        .where((part) => part.isNotEmpty)
        .map((part) => part[0].toUpperCase() + part.substring(1).toLowerCase())
        .join();
  }

  /// Converts a snake_case string to camelCase.
  /// Example: `my_cool_app` -> `myCoolApp`
  static String snakeToCamel(String input) {
    final pascal = snakeToPascal(input);
    if (pascal.isEmpty) return pascal;
    return pascal[0].toLowerCase() + pascal.substring(1);
  }

  /// Ensures input is valid snake_case (lowercase, underscores, digits).
  /// Returns the sanitised version.
  static String toSnakeCase(String input) {
    final buffer = StringBuffer();
    for (int i = 0; i < input.length; i++) {
      final char = input[i];
      if (RegExp(r'[A-Z]').hasMatch(char)) {
        if (i > 0) buffer.write('_');
        buffer.write(char.toLowerCase());
      } else if (RegExp(r'[a-z0-9_]').hasMatch(char)) {
        buffer.write(char);
      } else if (char == '-' || char == ' ') {
        buffer.write('_');
      }
    }
    return buffer.toString().replaceAll(RegExp(r'_+'), '_');
  }

  /// Validates that a project name is a valid Dart package name.
  static bool isValidPackageName(String name) {
    return RegExp(r'^[a-z][a-z0-9_]*$').hasMatch(name);
  }

  /// Validates that an organization string is a valid reverse domain.
  static bool isValidOrganization(String org) {
    return RegExp(r'^[a-z][a-z0-9]*(\.[a-z][a-z0-9]*)+$').hasMatch(org);
  }
}
