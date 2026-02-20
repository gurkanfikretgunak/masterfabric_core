import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart'
    hide PermissionsView, PermissionsCubit, PermissionsState;

import '../../../theme/theme_helper.dart';
import '../../../src/resources/resources.g.dart' as example_resources;
import 'cubit/permissions_cubit.dart';
import 'cubit/permissions_state.dart';

/// Permissions View - uses PermissionHelper (platform channel)
class PermissionsView
    extends MasterViewCubit<HelperPermissionsCubit, HelperPermissionsState> {
  PermissionsView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            return AppBar(
              title: Text(example_resources.resources.permissions_helper.title),
              leading: GoRouter.of(context).canPop()
                  ? IconButton(
                      icon: ConditionalIcon(
                        context: context,
                        icon: LucideIcons.arrowLeft,
                      ),
                      onPressed: () => GoRouter.of(context).pop(),
                    )
                  : null,
              actions: [
                IconButton(
                  icon: ConditionalIcon(
                    context: context,
                    icon: LucideIcons.refreshCw,
                    size: 18,
                  ),
                  onPressed: () => viewModel.checkAllPermissions(),
                ),
              ],
            );
          },
        );

  @override
  Future<void> initialContent(
      HelperPermissionsCubit viewModel, BuildContext context) async {}

  @override
  Widget viewContent(BuildContext context, HelperPermissionsCubit viewModel,
      HelperPermissionsState state) {
    final entries = state.permissionStatuses.entries.toList();

    return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(example_resources.resources.permissions_helper.runtime_permissions,
                style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 12),
            Container(
              decoration: context.cardDecoration,
              child: Column(
                children: entries.asMap().entries.map((entry) {
                  final index = entry.key;
                  final item = entry.value;
                  final permission = item.key;
                  final isGranted = item.value;

                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 10),
                        child: Row(
                          children: [
                            ConditionalIcon(
                              context: context,
                              icon: _getIcon(permission),
                              size: 16,
                              color: isGranted == true
                                  ? context.successColor
                                  : isGranted == false
                                      ? Theme.of(context).colorScheme.error
                                      : context.textMutedColor,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(_getName(permission),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
                                  Text(
                                    isGranted == true
                                        ? example_resources.resources.permissions_helper.granted
                                        : isGranted == false
                                            ? example_resources.resources.permissions_helper.denied
                                            : example_resources.resources.permissions_helper.unknown,
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(fontFamily: 'SF Mono').copyWith(
                                        fontSize: 10,
                                        color: context.textMutedColor),
                                  ),
                                ],
                              ),
                            ),
                            if (isGranted != true)
                              SizedBox(
                                height: 28,
                                child: OutlinedButton(
                                  onPressed: () =>
                                      viewModel.requestPermission(permission),
                                  child: Text(example_resources.resources.permissions_helper.request),
                                ),
                              )
                            else
                              ConditionalIcon(
                                context: context,
                                icon: LucideIcons.check,
                                size: 16,
                                color: context.successColor,
                              ),
                          ],
                        ),
                      ),
                      if (index < entries.length - 1) Divider(),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        );
  }

  String _getName(PermissionType p) =>
      p.name.replaceAll('_', ' ');

  IconData _getIcon(PermissionType p) {
    if (p == PermissionType.camera) return LucideIcons.camera;
    if (p == PermissionType.location) return LucideIcons.mapPin;
    if (p == PermissionType.storage) return LucideIcons.folder;
    if (p == PermissionType.photos) return LucideIcons.image;
    if (p == PermissionType.microphone) return LucideIcons.mic;
    if (p == PermissionType.contacts) return LucideIcons.users;
    return LucideIcons.shield;
  }
}
