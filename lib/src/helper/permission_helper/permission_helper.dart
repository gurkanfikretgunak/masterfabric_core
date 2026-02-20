import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'permission_type.dart';

/// Helper class for runtime permissions via platform channels.
///
/// Uses native Kotlin (Android) and Swift (iOS) implementations—no Dart packages.
/// Communicates via MethodChannel with the native side.
///
/// Usage:
/// ```dart
/// final granted = await PermissionHelper.instance.requestPermission(PermissionType.camera);
/// final isGranted = await PermissionHelper.instance.checkPermission(PermissionType.photos);
/// await PermissionHelper.instance.openAppSettings();
/// ```
class PermissionHelper {
  static final PermissionHelper _instance = PermissionHelper._internal();

  static PermissionHelper get instance => _instance;

  PermissionHelper._internal();

  /// Factory constructor for easy access
  factory PermissionHelper() => _instance;

  /// Platform channel name for communication with native code
  static const String _channelName = 'com.masterfabric.permission_helper';

  /// Method channel used to invoke native permission methods
  final MethodChannel _channel = const MethodChannel(_channelName);

  /// Checks if the given permission is granted without prompting.
  ///
  /// Returns `true` if granted, `false` otherwise.
  /// On unsupported platforms (e.g. web), returns `false`.
  Future<bool> checkPermission(PermissionType permission) async {
    if (!Platform.isAndroid && !Platform.isIOS) {
      debugPrint(
        '🔐 PermissionHelper: Unsupported platform for permission check',
      );
      return false;
    }

    try {
      final bool? result = await _channel.invokeMethod<bool>(
        'checkPermission',
        permission.key,
      );
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('🔐 PermissionHelper: Error checking permission: $e');
      return false;
    } on MissingPluginException {
      debugPrint(
        '🔐 PermissionHelper: Platform channel not available (missing native implementation)',
      );
      return false;
    }
  }

  /// Requests the given permission from the user.
  ///
  /// Returns `true` if granted, `false` otherwise.
  /// On unsupported platforms, returns `false`.
  Future<bool> requestPermission(PermissionType permission) async {
    if (!Platform.isAndroid && !Platform.isIOS) {
      debugPrint(
        '🔐 PermissionHelper: Unsupported platform for permission request',
      );
      return false;
    }

    try {
      final bool? result = await _channel.invokeMethod<bool>(
        'requestPermission',
        permission.key,
      );
      debugPrint(
        '🔐 PermissionHelper: ${permission.key} ${(result ?? false) ? '✅ GRANTED' : '❌ DENIED'}',
      );
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('🔐 PermissionHelper: Error requesting permission: $e');
      return false;
    } on MissingPluginException {
      debugPrint(
        '🔐 PermissionHelper: Platform channel not available (missing native implementation)',
      );
      return false;
    }
  }

  /// Opens the app settings screen.
  ///
  /// Returns `true` if settings were opened, `false` otherwise.
  Future<bool> openAppSettings() async {
    if (!Platform.isAndroid && !Platform.isIOS) {
      debugPrint(
        '🔐 PermissionHelper: Unsupported platform for openAppSettings',
      );
      return false;
    }

    try {
      final bool? result = await _channel.invokeMethod<bool>('openAppSettings');
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('🔐 PermissionHelper: Error opening app settings: $e');
      return false;
    } on MissingPluginException {
      debugPrint(
        '🔐 PermissionHelper: Platform channel not available (missing native implementation)',
      );
      return false;
    }
  }
}
