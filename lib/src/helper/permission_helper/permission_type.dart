/// Platform-agnostic permission types for the Permission Helper.
///
/// Each value maps to platform-specific permission strings:
/// - Android: Manifest.permission.* (e.g. CAMERA, ACCESS_FINE_LOCATION)
/// - iOS: Usage description keys (NSCameraUsageDescription, etc.)
enum PermissionType {
  /// Camera access
  camera,

  /// Location (coarse)
  location,

  /// Location when app is in use (iOS: NSLocationWhenInUseUsageDescription)
  locationWhenInUse,

  /// External storage (Android)
  storage,

  /// Photo library / media (iOS: NSPhotoLibraryUsageDescription)
  photos,

  /// Microphone
  microphone,

  /// Contacts
  contacts,

  /// Notifications (Android 13+)
  notification,
}

extension PermissionTypeExtension on PermissionType {
  /// Returns the string key used for platform channel communication.
  String get key => name;
}

/// Parses a string to [PermissionType].
/// Returns null if the string does not match any known permission.
PermissionType? permissionTypeFromString(String value) {
  final lower = value.toLowerCase().trim();
  for (final p in PermissionType.values) {
    if (p.name == lower) return p;
  }
  return null;
}
