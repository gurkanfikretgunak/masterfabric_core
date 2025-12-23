import 'package:permission_handler/permission_handler.dart';

/// Model for permission request result
class PermissionResult {
  final Permission permission;
  final bool isGranted;
  final PermissionStatus status;

  const PermissionResult({
    required this.permission,
    required this.isGranted,
    required this.status,
  });
}
