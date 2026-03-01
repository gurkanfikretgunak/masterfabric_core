import 'dart:io';

import 'package:args/args.dart';
import 'package:masterfabric_cli/src/commands/create_command.dart';

const String version = '1.0.0';

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addFlag('version', abbr: 'v', negatable: false, help: 'Print version.')
    ..addFlag('help', abbr: 'h', negatable: false, help: 'Print usage.');

  parser.addCommand('create', CreateCommand.argParser);

  final ArgResults results;
  try {
    results = parser.parse(arguments);
  } on FormatException catch (e) {
    stderr.writeln('Error: ${e.message}');
    stderr.writeln('');
    _printUsage(parser);
    exit(64);
  }

  if (results['version'] as bool) {
    stdout.writeln('masterfabric CLI v$version');
    exit(0);
  }

  if (results['help'] as bool || results.command == null) {
    _printUsage(parser);
    exit(0);
  }

  if (results.command!.name == 'create') {
    await CreateCommand.run(results.command!);
  } else {
    stderr.writeln('Unknown command: ${results.command!.name}');
    _printUsage(parser);
    exit(64);
  }
}

void _printUsage(ArgParser parser) {
  stdout.writeln('MasterFabric CLI - Create MasterFabric Flutter projects');
  stdout.writeln('');
  stdout.writeln('Usage: masterfabric <command> [arguments]');
  stdout.writeln('');
  stdout.writeln('Commands:');
  stdout.writeln('  create    Create a new MasterFabric project');
  stdout.writeln('');
  stdout.writeln('Global options:');
  stdout.writeln(parser.usage);
}
