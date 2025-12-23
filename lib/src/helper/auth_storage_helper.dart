import 'package:masterfabric_core/src/helper/local_storage/local_storage_helper.dart';

/// Helper class for authentication data persistence
class AuthStorageHelper {
  static const String _keyAccessToken = 'auth_access_token';
  static const String _keyRefreshToken = 'auth_refresh_token';
  static const String _keyUserId = 'auth_user_id';
  static const String _keyIsLoggedIn = 'auth_is_logged_in';

  /// Save access token
  static Future<bool> setAccessToken(String token) async {
    return await LocalStorageHelper.setString(_keyAccessToken, token);
  }

  /// Get access token
  static String? getAccessToken() {
    return LocalStorageHelper.getString(_keyAccessToken);
  }

  /// Save refresh token
  static Future<bool> setRefreshToken(String token) async {
    return await LocalStorageHelper.setString(_keyRefreshToken, token);
  }

  /// Get refresh token
  static String? getRefreshToken() {
    return LocalStorageHelper.getString(_keyRefreshToken);
  }

  /// Save user ID
  static Future<bool> setUserId(String userId) async {
    return await LocalStorageHelper.setString(_keyUserId, userId);
  }

  /// Get user ID
  static String? getUserId() {
    return LocalStorageHelper.getString(_keyUserId);
  }

  /// Set logged in status
  static Future<bool> setLoggedIn(bool isLoggedIn) async {
    return await LocalStorageHelper.setBool(_keyIsLoggedIn, isLoggedIn);
  }

  /// Get logged in status
  static bool? isLoggedIn() {
    return LocalStorageHelper.getBool(_keyIsLoggedIn);
  }

  /// Clear all auth data
  static Future<bool> clearAuth() async {
    await LocalStorageHelper.remove(_keyAccessToken);
    await LocalStorageHelper.remove(_keyRefreshToken);
    await LocalStorageHelper.remove(_keyUserId);
    await LocalStorageHelper.remove(_keyIsLoggedIn);
    return true;
  }
}
