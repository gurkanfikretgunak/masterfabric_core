import 'package:permission_handler/permission_handler.dart' as permission_handler;

/// Abstract base class for permission handling
abstract class PermissionHandlerBase {
  /// Request a single permission
  Future<bool> requestPermission(permission_handler.Permission permission);

  /// Request multiple permissions
  Future<Map<permission_handler.Permission, bool>> requestPermissions(
    List<permission_handler.Permission> permissions,
  );

  /// Check if permission is granted
  Future<bool> isGranted(permission_handler.Permission permission);

  /// Check if permission is denied
  Future<bool> isDenied(permission_handler.Permission permission);

  /// Check if permission is permanently denied
  Future<bool> isPermanentlyDenied(permission_handler.Permission permission);

  /// Open app settings
  Future<bool> openAppSettings();
}
