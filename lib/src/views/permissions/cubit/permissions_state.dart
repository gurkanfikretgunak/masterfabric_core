import 'package:equatable/equatable.dart';
import 'package:masterfabric_core/src/helper/permission_helper/permission_type.dart';

/// 🔐 **Permissions State**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// State management for Permissions Cubit
///
/// {@category States}
/// {@subCategory PermissionsState}

/// 🔐 Permissions state class
class PermissionsState extends Equatable {
  final Map<PermissionType, bool> permissionStatuses;
  final bool isLoading;

  const PermissionsState({
    this.permissionStatuses = const {},
    this.isLoading = false,
  });

  /// Create a copy of this state with some fields changed
  PermissionsState copyWith({
    Map<PermissionType, bool>? permissionStatuses,
    bool? isLoading,
  }) {
    return PermissionsState(
      permissionStatuses: permissionStatuses ?? this.permissionStatuses,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [permissionStatuses, isLoading];

  @override
  String toString() {
    return 'PermissionsState('
        'isLoading: $isLoading, '
        'permissionCount: ${permissionStatuses.length}'
        ')';
  }
}
