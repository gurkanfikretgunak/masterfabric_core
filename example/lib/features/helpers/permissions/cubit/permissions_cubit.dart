import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/permissions/cubit/permissions_state.dart';
import 'package:permission_handler/permission_handler.dart';

/// Helper Permissions Cubit
class HelperPermissionsCubit extends BaseViewModelCubit<HelperPermissionsState> {
  final PermissionHandlerHelper _permissionHelper = PermissionHandlerHelper.instance;

  HelperPermissionsCubit() : super(const HelperPermissionsState.initial()) {
    checkAllPermissions();
  }

  Future<void> checkAllPermissions() async {
    final permissions = [
      Permission.camera,
      Permission.location,
      Permission.storage,
      Permission.photos,
      Permission.microphone,
      Permission.contacts,
    ];

    final Map<Permission, bool?> statuses = {};
    for (final permission in permissions) {
      final isGranted = await _permissionHelper.isGranted(permission);
      statuses[permission] = isGranted;
    }

    stateChanger(HelperPermissionsState(permissionStatuses: statuses));
  }

  Future<void> requestPermission(Permission permission) async {
    final granted = await _permissionHelper.requestPermission(permission);
    final updatedStatuses = Map<Permission, bool?>.from(state.permissionStatuses);
    updatedStatuses[permission] = granted;
    stateChanger(HelperPermissionsState(permissionStatuses: updatedStatuses));
  }
}

