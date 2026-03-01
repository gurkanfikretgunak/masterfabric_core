import 'dart:io';

import 'package:args/args.dart';

import '../context/template_context.dart';
import '../generator/project_generator.dart';
import '../utils/cli_logger.dart';
import '../utils/string_utils.dart';

/// Handles the `masterfabric create <project_name>` command.
class CreateCommand {
  CreateCommand._();

  static ArgParser get argParser {
    return ArgParser()
      ..addOption(
        'org',
        help: 'Organization in reverse domain notation (e.g. com.example).',
        defaultsTo: 'com.example',
      )
      ..addOption(
        'description',
        abbr: 'd',
        help: 'A short project description.',
        defaultsTo: 'A new MasterFabric project.',
      )
      ..addFlag(
        'help',
        abbr: 'h',
        negatable: false,
        help: 'Print usage for the create command.',
      );
  }

  static Future<void> run(ArgResults results) async {
    if (results['help'] as bool) {
      _printUsage();
      exit(0);
    }

    if (results.rest.isEmpty) {
      CliLogger.error('Missing project name.');
      CliLogger.newLine();
      _printUsage();
      exit(64);
    }

    final String rawName = results.rest.first;
    final String projectName = StringUtils.toSnakeCase(rawName);
    final String organization = results['org'] as String;
    final String description = results['description'] as String;

    if (!StringUtils.isValidPackageName(projectName)) {
      CliLogger.error(
        '"$projectName" is not a valid Dart package name. '
        'Use lowercase letters, digits, and underscores only.',
      );
      exit(64);
    }

    if (!StringUtils.isValidOrganization(organization)) {
      CliLogger.error(
        '"$organization" is not a valid organization. '
        'Use reverse domain notation (e.g. com.example).',
      );
      exit(64);
    }

    final targetDir = Directory(projectName);
    if (targetDir.existsSync()) {
      CliLogger.error('Directory "$projectName" already exists.');
      exit(1);
    }

    final context = TemplateContext(
      projectName: projectName,
      organization: organization,
      description: description,
    );

    CliLogger.header('Creating MasterFabric project: $projectName');
    CliLogger.newLine();

    final success = await ProjectGenerator.generate(
      context: context,
      outputDir: Directory.current.path,
    );

    if (success) {
      CliLogger.newLine();
      CliLogger.header('Project created successfully!');
      CliLogger.newLine();
      CliLogger.info('Next steps:');
      CliLogger.detail('  cd $projectName');
      CliLogger.detail('  flutter run');
      CliLogger.newLine();
    } else {
      CliLogger.newLine();
      CliLogger.error('Project creation failed. Check the errors above.');
      exit(1);
    }
  }

  static void _printUsage() {
    stdout.writeln('Create a new MasterFabric Flutter project.');
    stdout.writeln('');
    stdout.writeln('Usage: masterfabric create <project_name> [options]');
    stdout.writeln('');
    stdout.writeln('Options:');
    stdout.writeln(argParser.usage);
  }
}
