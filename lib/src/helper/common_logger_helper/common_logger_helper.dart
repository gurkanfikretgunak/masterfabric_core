import 'package:logger/logger.dart';

/// Helper class for logging utilities
class CommonLoggerHelper {
  static Logger? _logger;

  /// Get logger instance
  static Logger get logger {
    _logger ??= Logger(
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
        printTime: true,
      ),
    );
    return _logger!;
  }

  /// Log debug message
  static void debug(String message) {
    logger.d(message);
  }

  /// Log info message
  static void info(String message) {
    logger.i(message);
  }

  /// Log warning message
  static void warning(String message) {
    logger.w(message);
  }

  /// Log error message
  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    logger.e(message, error: error, stackTrace: stackTrace);
  }

  /// Log fatal error
  static void fatal(String message, [Object? error, StackTrace? stackTrace]) {
    logger.f(message, error: error, stackTrace: stackTrace);
  }
}
