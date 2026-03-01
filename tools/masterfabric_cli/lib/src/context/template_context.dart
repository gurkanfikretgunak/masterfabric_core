import '../utils/string_utils.dart';

/// Holds all derived variables used by templates during project generation.
class TemplateContext {
  /// snake_case project name (e.g. `my_app`).
  final String projectName;

  /// PascalCase project name (e.g. `MyApp`).
  final String projectNamePascal;

  /// camelCase project name (e.g. `myApp`).
  final String projectNameCamel;

  /// Reverse-domain organisation (e.g. `com.example`).
  final String organization;

  /// Human-readable project description.
  final String description;

  /// Android application identifier (e.g. `com.example.my_app`).
  final String androidIdentifier;

  /// iOS bundle identifier (e.g. `com.example.myApp`).
  final String iosBundleId;

  /// The masterfabric_core version constraint to use.
  final String masterfabricCoreVersion;

  TemplateContext({
    required String projectName,
    required this.organization,
    this.description = 'A new MasterFabric project.',
    this.masterfabricCoreVersion = '^1.0.0',
  })  : projectName = StringUtils.toSnakeCase(projectName),
        projectNamePascal = StringUtils.snakeToPascal(
          StringUtils.toSnakeCase(projectName),
        ),
        projectNameCamel = StringUtils.snakeToCamel(
          StringUtils.toSnakeCase(projectName),
        ),
        androidIdentifier =
            '$organization.${StringUtils.toSnakeCase(projectName)}',
        iosBundleId =
            '$organization.${StringUtils.snakeToCamel(StringUtils.toSnakeCase(projectName))}';
}
