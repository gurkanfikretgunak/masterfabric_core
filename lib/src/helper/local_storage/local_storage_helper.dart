import 'package:shared_preferences/shared_preferences.dart';

/// Helper class for local storage operations using SharedPreferences
class LocalStorageHelper {
  static SharedPreferences? _prefs;

  /// Initialize SharedPreferences
  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  /// Get SharedPreferences instance
  static SharedPreferences? get instance => _prefs;

  /// Save a string value
  static Future<bool> setString(String key, String value) async {
    await init();
    return await _prefs!.setString(key, value);
  }

  /// Get a string value
  static String? getString(String key) {
    return _prefs?.getString(key);
  }

  /// Save an integer value
  static Future<bool> setInt(String key, int value) async {
    await init();
    return await _prefs!.setInt(key, value);
  }

  /// Get an integer value
  static int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  /// Save a boolean value
  static Future<bool> setBool(String key, bool value) async {
    await init();
    return await _prefs!.setBool(key, value);
  }

  /// Get a boolean value
  static bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  /// Save a double value
  static Future<bool> setDouble(String key, double value) async {
    await init();
    return await _prefs!.setDouble(key, value);
  }

  /// Get a double value
  static double? getDouble(String key) {
    return _prefs?.getDouble(key);
  }

  /// Save a string list
  static Future<bool> setStringList(String key, List<String> value) async {
    await init();
    return await _prefs!.setStringList(key, value);
  }

  /// Get a string list
  static List<String>? getStringList(String key) {
    return _prefs?.getStringList(key);
  }

  /// Remove a key
  static Future<bool> remove(String key) async {
    await init();
    return await _prefs!.remove(key);
  }

  /// Clear all data
  static Future<bool> clear() async {
    await init();
    return await _prefs!.clear();
  }

  /// Check if a key exists
  static bool containsKey(String key) {
    return _prefs?.containsKey(key) ?? false;
  }

  /// Get all keys
  static Set<String> getAllKeys() {
    return _prefs?.getKeys() ?? {};
  }

  /// Get an item by key (supports all types)
  static Future<dynamic> getItem(String key) async {
    await init();
    if (_prefs == null) return null;
    
    // Try different types
    if (_prefs!.containsKey(key)) {
      final value = _prefs!.get(key);
      return value;
    }
    return null;
  }

  /// Set an item by key (supports all types)
  static Future<bool> setItem(String key, dynamic value) async {
    await init();
    if (_prefs == null) return false;
    
    if (value is String) {
      return await _prefs!.setString(key, value);
    } else if (value is int) {
      return await _prefs!.setInt(key, value);
    } else if (value is bool) {
      return await _prefs!.setBool(key, value);
    } else if (value is double) {
      return await _prefs!.setDouble(key, value);
    } else if (value is List<String>) {
      return await _prefs!.setStringList(key, value);
    }
    return false;
  }

  /// Remove an item by key
  static Future<bool> removeItem(String key) async {
    await init();
    return await _prefs?.remove(key) ?? false;
  }

  /// Get all items as a map
  static Future<Map<String, dynamic>> getAllItems() async {
    await init();
    if (_prefs == null) return {};
    
    final keys = _prefs!.getKeys();
    final Map<String, dynamic> items = {};
    
    for (final key in keys) {
      items[key] = _prefs!.get(key);
    }
    
    return items;
  }
}
