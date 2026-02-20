import 'package:equatable/equatable.dart';
import 'package:masterfabric_core/src/helper/permission_helper/permission_type.dart';

/// Helper Permissions State
class HelperPermissionsState extends Equatable {
  final Map<PermissionType, bool?> permissionStatuses;

  const HelperPermissionsState({
    required this.permissionStatuses,
  });

  const HelperPermissionsState.initial()
      : permissionStatuses = const {};

  HelperPermissionsState copyWith({
    Map<PermissionType, bool?>? permissionStatuses,
  }) {
    return HelperPermissionsState(
      permissionStatuses: permissionStatuses ?? this.permissionStatuses,
    );
  }

  @override
  List<Object?> get props => [permissionStatuses];
}
