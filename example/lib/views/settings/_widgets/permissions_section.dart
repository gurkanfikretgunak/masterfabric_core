import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

import '../../../theme/theme_helper.dart';
import '../../../src/resources/resources.g.dart' as example_resources;
import '../../../app/routes.dart' as app_routes;

/// Permissions Section - Toggle to request permissions, navigate to helper, open app settings
class PermissionsSection extends StatefulWidget {
  final Function(String) goRoute;

  const PermissionsSection({
    super.key,
    required this.goRoute,
  });

  @override
  State<PermissionsSection> createState() => _PermissionsSectionState();
}

class _PermissionsSectionState extends State<PermissionsSection> {
  bool _isRequesting = false;

  Future<void> _onRequestPermissionsToggled(bool value) async {
    if (!value) return;
    if (_isRequesting) return;
    setState(() => _isRequesting = true);

    final configHelper = AssetConfigHelper();
    final required = configHelper.getList(
      'permissionsConfiguration.requiredPermissions',
    );
    final optional = configHelper.getList(
      'permissionsConfiguration.optionalPermissions',
    );

    final permissions = <({PermissionType permission, bool isOptional})>[];
    for (final k in required) {
      final p = permissionTypeFromString(k);
      if (p != null) permissions.add((permission: p, isOptional: false));
    }
    for (final k in optional) {
      final p = permissionTypeFromString(k);
      if (p != null) permissions.add((permission: p, isOptional: true));
    }

    // Fallback: if config has no permissions, use all types (required + optional)
    if (permissions.isEmpty) {
      permissions.addAll([
        (permission: PermissionType.camera, isOptional: false),
        (permission: PermissionType.photos, isOptional: false),
        (permission: PermissionType.locationWhenInUse, isOptional: false),
        (permission: PermissionType.microphone, isOptional: true),
        (permission: PermissionType.contacts, isOptional: true),
        (permission: PermissionType.storage, isOptional: true),
        (permission: PermissionType.notification, isOptional: true),
      ]);
    }

    final permConfig =
        configHelper.getAllConfig()?['permissionsConfiguration'];
    final config = permConfig is Map<String, dynamic>
        ? PermissionHelperBottomSheet.fromConfigMap(permConfig)
        : null;

    if (!mounted) return;
    await PermissionHelperBottomSheet.show(
      context,
      permissions: permissions,
      onComplete: () {
        if (mounted) {
          setState(() => _isRequesting = false);
        }
      },
      config: config,
      forceRequestAll: true, // Always show flow so user can re-request any permission
    );
    if (mounted) {
      setState(() => _isRequesting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: context.cardDecoration,
      child: Column(
        children: [
          ListTile(
            dense: true,
            leading: ConditionalIcon(
              context: context,
              icon: LucideIcons.shieldCheck,
              size: 18,
            ),
            title: Text(
              example_resources.resources.settings.request_permissions_again,
            ),
            subtitle: Text(
              example_resources.resources.settings.manage_permissions,
            ),
            trailing: Switch(
              value: _isRequesting,
              onChanged: _isRequesting
                  ? null
                  : (value) => _onRequestPermissionsToggled(value),
            ),
          ),
          const Divider(height: 1),
          ListTile(
            dense: true,
            leading: ConditionalIcon(
              context: context,
              icon: LucideIcons.shield,
              size: 18,
            ),
            title: Text(
              example_resources.resources.settings.permissions,
            ),
            subtitle: Text(
              example_resources.resources.settings.manage_permissions,
            ),
            trailing: ConditionalIcon(
              context: context,
              icon: LucideIcons.chevronRight,
              size: 18,
              color: context.textMutedColor,
            ),
            onTap: () => widget.goRoute(app_routes.AppRoutes.permissionsCases),
          ),
          const Divider(height: 1),
          ListTile(
            dense: true,
            leading: ConditionalIcon(
              context: context,
              icon: LucideIcons.settings,
              size: 18,
            ),
            title: Text(
              example_resources.resources.settings.open_app_settings,
            ),
            subtitle: Text(
              example_resources.resources.permissions_helper.runtime_permissions,
            ),
            trailing: ConditionalIcon(
              context: context,
              icon: LucideIcons.externalLink,
              size: 16,
              color: context.textMutedColor,
            ),
            onTap: () => PermissionHelper.instance.openAppSettings(),
          ),
        ],
      ),
    );
  }
}
