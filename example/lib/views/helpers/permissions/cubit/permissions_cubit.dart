import 'package:injectable/injectable.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

import 'permissions_state.dart';

/// Helper Permissions Cubit - uses platform channel PermissionHelper
@injectable
class HelperPermissionsCubit extends BaseViewModelCubit<HelperPermissionsState> {
  final PermissionHelper _permissionHelper = PermissionHelper.instance;

  static const List<PermissionType> _allPermissions = [
    PermissionType.camera,
    PermissionType.location,
    PermissionType.photos,
    PermissionType.storage,
    PermissionType.microphone,
    PermissionType.contacts,
  ];

  HelperPermissionsCubit() : super(const HelperPermissionsState.initial()) {
    checkAllPermissions();
  }

  Future<void> checkAllPermissions() async {
    final Map<PermissionType, bool?> statuses = {};
    for (final permission in _allPermissions) {
      final isGranted = await _permissionHelper.checkPermission(permission);
      statuses[permission] = isGranted;
    }

    stateChanger(HelperPermissionsState(permissionStatuses: statuses));
  }

  Future<void> requestPermission(PermissionType permission) async {
    final granted = await _permissionHelper.requestPermission(permission);
    final updatedStatuses =
        Map<PermissionType, bool?>.from(state.permissionStatuses);
    updatedStatuses[permission] = granted;
    stateChanger(HelperPermissionsState(permissionStatuses: updatedStatuses));
  }
}
