import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart' hide PermissionsView, PermissionsCubit, PermissionsState;
import 'package:masterfabric_core_example/features/helpers/permissions/cubit/permissions_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/permissions/cubit/permissions_state.dart';
import 'package:permission_handler/permission_handler.dart';

/// Permissions Helper Demo View
class PermissionsView extends MasterViewCubit<HelperPermissionsCubit, HelperPermissionsState> {
  PermissionsView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            return AppBar(
              title: const Text('Permissions Helper'),
              leading: GoRouter.of(context).canPop()
                  ? IconButton(
                      icon: const Icon(LucideIcons.arrowLeft),
                      onPressed: () {
                        if (GoRouter.of(context).canPop()) {
                          GoRouter.of(context).pop();
                        }
                      },
                      tooltip: 'Back',
                    )
                  : null,
              actions: [
                IconButton(
                  icon: const Icon(LucideIcons.refreshCw),
                  onPressed: () => viewModel.checkAllPermissions(),
                  tooltip: 'Refresh',
                ),
              ],
            );
          },
        );

  @override
  Future<void> initialContent(HelperPermissionsCubit viewModel, BuildContext context) async {
    // State is loaded in constructor
  }

  @override
  Widget viewContent(BuildContext context, HelperPermissionsCubit viewModel, HelperPermissionsState state) {
    return BlocBuilder<HelperPermissionsCubit, HelperPermissionsState>(
      bloc: viewModel,
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Runtime Permissions',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                'Request and check permission status',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
              ),
              const SizedBox(height: 24),
              ...state.permissionStatuses.entries.map((entry) {
                final permission = entry.key;
                final isGranted = entry.value;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        _getPermissionIcon(permission),
                        color: isGranted == true
                            ? Colors.green
                            : isGranted == false
                                ? Colors.red
                                : Colors.grey,
                      ),
                      title: Text(_getPermissionName(permission)),
                      subtitle: Text(
                        isGranted == true
                            ? 'Granted'
                            : isGranted == false
                                ? 'Denied'
                                : 'Not checked',
                      ),
                      trailing: isGranted == true
                          ? Icon(LucideIcons.check, color: Colors.green)
                          : ElevatedButton(
                              onPressed: () {
                                viewModel.requestPermission(permission);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      '${_getPermissionName(permission)} permission requested',
                                    ),
                                  ),
                                );
                              },
                              child: const Text('Request'),
                            ),
                    ),
                  ),
                );
              }),
            ],
          ),
        );
      },
    );
  }

  String _getPermissionName(Permission permission) {
    return permission.toString().split('.').last.replaceAll('_', ' ').toUpperCase();
  }

  IconData _getPermissionIcon(Permission permission) {
    if (permission == Permission.camera) return LucideIcons.camera;
    if (permission == Permission.location) return LucideIcons.mapPin;
    if (permission == Permission.storage) return LucideIcons.folder;
    if (permission == Permission.photos) return LucideIcons.image;
    if (permission == Permission.microphone) return LucideIcons.mic;
    if (permission == Permission.contacts) return LucideIcons.users;
    return LucideIcons.shield;
  }
}

