import 'package:equatable/equatable.dart';
import 'package:permission_handler/permission_handler.dart';

/// Helper Permissions State
class HelperPermissionsState extends Equatable {
  final Map<Permission, bool?> permissionStatuses;

  const HelperPermissionsState({
    required this.permissionStatuses,
  });

  const HelperPermissionsState.initial()
      : permissionStatuses = const {};

  HelperPermissionsState copyWith({
    Map<Permission, bool?>? permissionStatuses,
  }) {
    return HelperPermissionsState(
      permissionStatuses: permissionStatuses ?? this.permissionStatuses,
    );
  }

  @override
  List<Object?> get props => [permissionStatuses];
}

