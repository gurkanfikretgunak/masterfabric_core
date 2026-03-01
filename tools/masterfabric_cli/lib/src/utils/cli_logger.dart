import 'dart:io';

/// Colored terminal output for the CLI.
class CliLogger {
  CliLogger._();

  static const String _reset = '\x1B[0m';
  static const String _green = '\x1B[32m';
  static const String _red = '\x1B[31m';
  static const String _yellow = '\x1B[33m';
  static const String _cyan = '\x1B[36m';
  static const String _bold = '\x1B[1m';
  static const String _dim = '\x1B[2m';

  static void success(String message) {
    stdout.writeln('$_green  $message$_reset');
  }

  static void error(String message) {
    stderr.writeln('$_red  $message$_reset');
  }

  static void warning(String message) {
    stdout.writeln('$_yellow  $message$_reset');
  }

  static void info(String message) {
    stdout.writeln('$_cyan  $message$_reset');
  }

  static void step(String message) {
    stdout.writeln('$_bold$_cyan> $message$_reset');
  }

  static void detail(String message) {
    stdout.writeln('$_dim  $message$_reset');
  }

  static void newLine() {
    stdout.writeln();
  }

  static void header(String message) {
    stdout.writeln('');
    stdout.writeln('$_bold$_cyan$message$_reset');
    stdout.writeln('$_dim${'=' * message.length}$_reset');
  }

  static void fileCreated(String path) {
    stdout.writeln('$_green  + $_reset$path');
  }

  static void fileModified(String path) {
    stdout.writeln('$_yellow  ~ $_reset$path');
  }
}
