import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterfabric_core/src/core.dart';
import 'package:masterfabric_core/src/helper/permission_helper/permission_type.dart';
import 'package:masterfabric_core/src/views/permissions/cubit/permissions_cubit.dart';
import 'package:masterfabric_core/src/views/permissions/cubit/permissions_state.dart';

/// 🔐 **Permissions View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Permissions view for requesting app permissions.
/// Must be wrapped in BlocProvider<PermissionsCubit> with permissions from route.
/// {@category Views}
/// {@subCategory PermissionsView}

class PermissionsView extends StatelessWidget {
  final List<PermissionType> permissions;
  final Function(String) goRoute;
  final Map<String, dynamic> arguments;

  const PermissionsView({
    super.key,
    required this.goRoute,
    this.arguments = const {},
    required this.permissions,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PermissionsCubit, PermissionsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text(resources.permissions.title)),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(
                resources.permissions.description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              ...permissions.map((permission) => ListTile(
                    title: Text(permission.name),
                    trailing: state.permissionStatuses[permission] == true
                        ? const Icon(Icons.check, color: Colors.green)
                        : ElevatedButton(
                            onPressed: () => context
                                .read<PermissionsCubit>()
                                .requestPermission(permission),
                            child: Text(resources.permissions.grant),
                          ),
                  )),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: state.isLoading
                    ? null
                    : () =>
                        context.read<PermissionsCubit>().requestPermissions(),
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : Text(resources.permissions.grant_all),
              ),
            ],
          ),
        );
      },
    );
  }
}
