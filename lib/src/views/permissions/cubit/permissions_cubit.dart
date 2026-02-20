import 'package:masterfabric_core/src/base/base_view_model_cubit.dart';
import 'package:masterfabric_core/src/helper/permission_helper/permission_helper.dart';
import 'package:masterfabric_core/src/helper/permission_helper/permission_type.dart';
import 'package:masterfabric_core/src/views/permissions/cubit/permissions_state.dart';

/// 🔐 **Permissions Cubit**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Cubit that manages permissions operations with MVVM pattern.
/// Provided via BlocProvider at route level (not GetIt).
///
/// {@category ViewModels}
/// {@subCategory PermissionsCubit}

class PermissionsCubit extends BaseViewModelCubit<PermissionsState> {
  final List<PermissionType> permissions;
  final PermissionHelper _permissionHelper = PermissionHelper.instance;

  PermissionsCubit({required this.permissions}) : super(const PermissionsState());

  Future<void> requestPermissions() async {
    stateChanger(state.copyWith(isLoading: true));
    final Map<PermissionType, bool> results = {};
    for (final permission in permissions) {
      results[permission] =
          await _permissionHelper.requestPermission(permission);
    }
    stateChanger(state.copyWith(
      permissionStatuses: results,
      isLoading: false,
    ));
  }

  Future<void> requestPermission(PermissionType permission) async {
    final granted =
        await _permissionHelper.requestPermission(permission);
    stateChanger(state.copyWith(
      permissionStatuses: {
        ...state.permissionStatuses,
        permission: granted,
      },
    ));
  }
}
