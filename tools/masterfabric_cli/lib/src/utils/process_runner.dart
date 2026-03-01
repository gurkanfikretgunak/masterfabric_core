import 'dart:io';

import 'cli_logger.dart';

/// Runs external processes (flutter, dart) and reports results.
class ProcessRunner {
  ProcessRunner._();

  /// Runs `flutter create` with only iOS and Android platforms.
  static Future<bool> flutterCreate({
    required String projectName,
    required String organization,
    required String workingDir,
  }) async {
    return _run(
      'flutter',
      [
        'create',
        projectName,
        '--org',
        organization,
        '--platforms',
        'ios,android',
      ],
      workingDir: workingDir,
      label: 'flutter create',
    );
  }

  /// Runs `flutter pub get` in [projectDir].
  static Future<bool> flutterPubGet(String projectDir) async {
    return _run(
      'flutter',
      ['pub', 'get'],
      workingDir: projectDir,
      label: 'flutter pub get',
    );
  }

  /// Runs `dart run build_runner build --delete-conflicting-outputs` in [projectDir].
  static Future<bool> buildRunnerBuild(String projectDir) async {
    return _run(
      'dart',
      ['run', 'build_runner', 'build', '--delete-conflicting-outputs'],
      workingDir: projectDir,
      label: 'build_runner build',
    );
  }

  static Future<bool> _run(
    String executable,
    List<String> args, {
    required String workingDir,
    required String label,
  }) async {
    CliLogger.step('Running $label...');

    final result = await Process.run(
      executable,
      args,
      workingDirectory: workingDir,
      runInShell: true,
    );

    if (result.exitCode != 0) {
      CliLogger.error('$label failed (exit code ${result.exitCode})');
      final stderr = result.stderr.toString().trim();
      if (stderr.isNotEmpty) {
        CliLogger.detail(stderr);
      }
      return false;
    }

    CliLogger.success('$label completed');
    return true;
  }
}
