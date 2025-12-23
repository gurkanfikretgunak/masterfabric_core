import 'package:permission_handler/permission_handler.dart' as permission_handler;
import 'package:masterfabric_core/src/helper/permission_handler_helper/abstract/permission_handler_base.dart';

/// Helper class for runtime permissions
class PermissionHandlerHelper implements PermissionHandlerBase {
  static final PermissionHandlerHelper _instance = PermissionHandlerHelper._internal();
  static PermissionHandlerHelper get instance => _instance;
  PermissionHandlerHelper._internal();

  /// Factory constructor for easy access
  factory PermissionHandlerHelper() => _instance;

  /// Initialize permission handler for real devices
  Future<void> initializeForRealDevice() async {
    // Implementation can be added later if needed
  }

  /// Request a single permission
  @override
  Future<bool> requestPermission(permission_handler.Permission permission) async {
    final status = await permission.request();
    return status.isGranted;
  }

  /// Request multiple permissions
  @override
  Future<Map<permission_handler.Permission, bool>> requestPermissions(
    List<permission_handler.Permission> permissions,
  ) async {
    final Map<permission_handler.Permission, bool> results = {};
    for (final permission in permissions) {
      results[permission] = await requestPermission(permission);
    }
    return results;
  }

  /// Check if permission is granted
  @override
  Future<bool> isGranted(permission_handler.Permission permission) async {
    final status = await permission.status;
    return status.isGranted;
  }

  /// Check if permission is denied
  @override
  Future<bool> isDenied(permission_handler.Permission permission) async {
    final status = await permission.status;
    return status.isDenied;
  }

  /// Check if permission is permanently denied
  @override
  Future<bool> isPermanentlyDenied(permission_handler.Permission permission) async {
    final status = await permission.status;
    return status.isPermanentlyDenied;
  }

  /// Open app settings
  @override
  Future<bool> openAppSettings() async {
    return await permission_handler.openAppSettings();
  }
}
