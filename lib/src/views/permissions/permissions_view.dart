import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:masterfabric_core/src/views/permissions/cubit/permissions_cubit.dart';
import 'package:masterfabric_core/src/views/permissions/cubit/permissions_state.dart';
import 'package:permission_handler/permission_handler.dart';

/// 🔐 **Permissions View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Permissions view for requesting app permissions
/// Uses MasterViewCubit for lifecycle management
/// {@category Views}
/// {@subCategory PermissionsView}

class PermissionsView extends MasterViewCubit<PermissionsCubit, PermissionsState> {
  final List<Permission> permissions;

  PermissionsView({
    required Function(String) goRoute,
    Map<String, dynamic> arguments = const {},
    required this.permissions,
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('🔐 Permissions View Start!');
    // Initialize permissions check if needed
  }

  @override
  Widget viewContent(BuildContext context, PermissionsCubit viewModel, PermissionsState state) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          resources.permissions.description,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 24),
        ...permissions.map((permission) => ListTile(
              title: Text(permission.toString()),
              trailing: state.permissionStatuses[permission] == true
                  ? const Icon(Icons.check, color: Colors.green)
                  : ElevatedButton(
                      onPressed: () => viewModel.requestPermission(permission),
                      child: Text(resources.permissions.grant),
                    ),
            )),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: state.isLoading ? null : () => viewModel.requestPermissions(),
          child: state.isLoading
              ? const CircularProgressIndicator()
              : Text(resources.permissions.grant_all),
        ),
      ],
    );
  }
}
