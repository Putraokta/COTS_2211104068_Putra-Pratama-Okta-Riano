// lib/core/utils/logger.dart

import 'package:flutter/foundation.dart';

class Logger {
  // Debug log
  static void debug(String message) {
    if (kDebugMode) {
      print('DEBUG: $message');
    }
  }

  // Info log
  static void info(String message) {
    print('INFO: $message');
  }

  // Error log
  static void error(String message, {Object? error, StackTrace? stackTrace}) {
    print('ERROR: $message');
    if (error != null) {
      print('Error details: $error');
    }
    if (stackTrace != null) {
      print('Stack trace: $stackTrace');
    }
  }

  // Warn log
  static void warn(String message) {
    print('WARN: $message');
  }
}
