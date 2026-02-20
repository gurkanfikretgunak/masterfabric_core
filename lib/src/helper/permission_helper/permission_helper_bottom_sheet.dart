import 'package:flutter/material.dart';

import 'permission_helper.dart';
import 'permission_type.dart';
import 'package:masterfabric_core/src/helper/local_storage/local_storage_helper.dart';

/// Configuration for styling the Permission Helper bottom sheet.
///
/// Apps can pass this to customize colors, labels, or provide a custom builder.
class PermissionHelperBottomSheetConfig {
  const PermissionHelperBottomSheetConfig({
    this.backgroundColor,
    this.primaryColor,
    this.textColor,
    this.borderRadius,
    this.titleStyle,
    this.descriptionStyle,
    this.grantButtonLabel,
    this.skipButtonLabel,
    this.notNowButtonLabel,
    this.builder,
    this.showSummaryFirst = true,
    this.summaryTitle,
    this.summaryDescription,
    this.summaryContinueLabel,
    this.permissionDescriptions,
    this.summaryBuilder,
  });

  final Color? backgroundColor;
  final Color? primaryColor;
  final Color? textColor;

  /// Top corner border radius for the bottom sheet (default: 20).
  final double? borderRadius;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;
  final String? grantButtonLabel;
  final String? skipButtonLabel;
  final String? notNowButtonLabel;

  /// When true, shows a summary of all permissions with descriptions before
  /// the step-by-step requests. Better UX: user sees what will be asked.
  final bool showSummaryFirst;

  /// Title for the summary step (e.g. "Permissions needed").
  final String? summaryTitle;

  /// Intro text for the summary step (e.g. "This app needs access to:").
  final String? summaryDescription;

  /// Label for the Continue button on the summary step.
  final String? summaryContinueLabel;

  /// Custom descriptions per permission. Key: permission name (e.g. "camera").
  /// Overrides default rationale for summary display.
  final Map<String, String>? permissionDescriptions;

  /// Custom builder for the summary step. If provided, replaces default summary UI.
  /// Parameters: context, permissions list, onContinue, onNotNow.
  final Widget Function(
    BuildContext context,
    List<({PermissionType permission, bool isOptional})> permissions,
    VoidCallback onContinue,
    VoidCallback onNotNow,
  )? summaryBuilder;

  /// Custom builder for each permission step. If provided, the default UI is
  /// replaced. Parameters: context, permission, rationale, isOptional,
  /// onGrant, onSkip, onNotNow.
  final Widget Function(
    BuildContext context,
    PermissionType permission,
    String rationale,
    bool isOptional,
    VoidCallback onGrant,
    VoidCallback onSkip,
    VoidCallback onNotNow,
  )? builder;
}

/// Default rationale text per permission type.
String _defaultRationale(PermissionType permission) {
  switch (permission) {
    case PermissionType.camera:
      return 'This app needs camera access to capture photos and videos.';
    case PermissionType.location:
    case PermissionType.locationWhenInUse:
      return 'This app needs location access to show you relevant content.';
    case PermissionType.storage:
    case PermissionType.photos:
      return 'This app needs access to your photos to let you choose images.';
    case PermissionType.microphone:
      return 'This app needs microphone access for voice features.';
    case PermissionType.contacts:
      return 'This app needs contacts access to help you connect with others.';
    case PermissionType.notification:
      return 'This app would like to send you notifications.';
  }
}

/// Step-by-step permission request bottom sheet.
///
/// Shows one permission at a time. Supports required and optional permissions.
/// Optional permissions show a "Skip" button.
class PermissionHelperBottomSheet {
  PermissionHelperBottomSheet._();

  /// Shows the permission bottom sheet step-by-step.
  ///
  /// - By default, skips permissions already granted (no re-ask).
  /// - When [forceRequestAll] is true, shows all permissions including already-granted
  ///   (useful for settings "request again" - granted ones complete immediately).
  /// - If [config.showSummaryFirst] is true, shows a summary of all permissions
  ///   with descriptions first, then continues to accept one-by-one.
  ///
  /// [permissions] - List of (permission, isOptional) pairs.
  /// [onComplete] - Called when all steps are done (granted, skipped, or dismissed).
  /// [config] - Optional styling. Can also be built from app_config bottomSheetStyle.
  /// [forceRequestAll] - When true, show all permissions (don't skip already-granted).
  static Future<void> show(
    BuildContext context, {
    required List<({PermissionType permission, bool isOptional})> permissions,
    required VoidCallback onComplete,
    PermissionHelperBottomSheetConfig? config,
    bool forceRequestAll = false,
  }) async {
    if (permissions.isEmpty) {
      onComplete();
      return;
    }

    final List<({PermissionType permission, bool isOptional})> pending;
    if (forceRequestAll) {
      pending = List.from(permissions);
      debugPrint('🔐 PermissionHelper: Force-requesting all ${pending.length} permissions');
    } else {
      // Pre-check: skip permissions already granted
      pending = <({PermissionType permission, bool isOptional})>[];
      for (final p in permissions) {
        final granted =
            await PermissionHelper.instance.checkPermission(p.permission);
        if (!granted) {
          pending.add(p);
        } else {
          debugPrint(
              '🔐 PermissionHelper: ${p.permission.name} already granted, skipping');
        }
      }

      if (pending.isEmpty) {
        debugPrint('🔐 PermissionHelper: All permissions already granted');
        LocalStorageHelper.setItem('osmea_permission_helper_pending', false);
        onComplete();
        return;
      }
    }

    if (!context.mounted) return;

    final radius = config?.borderRadius ?? 20.0;
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(radius)),
    );

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: config?.backgroundColor ?? Colors.white,
      shape: shape,
      builder: (ctx) => _PermissionStepWidget(
        permissions: pending,
        onComplete: onComplete,
        config: config,
      ),
    );
  }

  /// Builds config from app_config permissionsConfiguration.
  ///
  /// Accepts either the full permissionsConfiguration map (with bottomSheetStyle
  /// nested) or just the bottomSheetStyle map. Summary fields (showSummaryFirst,
  /// summaryTitle, etc.) are read from top level; style from bottomSheetStyle.
  static PermissionHelperBottomSheetConfig? fromConfigMap(
    Map<String, dynamic>? map,
  ) {
    if (map == null || map.isEmpty) return null;
    final style = map['bottomSheetStyle'] as Map<String, dynamic>? ?? map;
    Color? primaryColor;
    Color? backgroundColor;
    Color? textColor;
    if (style['primaryColor'] is String) {
      primaryColor = _colorFromHex(style['primaryColor'] as String);
    }
    if (style['backgroundColor'] is String) {
      backgroundColor = _colorFromHex(style['backgroundColor'] as String);
    }
    if (style['textColor'] is String) {
      textColor = _colorFromHex(style['textColor'] as String);
    }
    double? borderRadius;
    if (style['borderRadius'] is num) {
      borderRadius = (style['borderRadius'] as num).toDouble();
    }
    Map<String, String>? permissionDescriptions;
    final desc = map['permissionDescriptions'] ?? style['permissionDescriptions'];
    if (desc is Map) {
      permissionDescriptions =
          desc.map((k, v) => MapEntry(k.toString(), v.toString()));
    }
    return PermissionHelperBottomSheetConfig(
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      textColor: textColor,
      borderRadius: borderRadius,
      grantButtonLabel: style['grantButtonLabel'] as String?,
      skipButtonLabel: style['skipButtonLabel'] as String?,
      notNowButtonLabel: style['notNowButtonLabel'] as String?,
      showSummaryFirst: map['showSummaryFirst'] as bool? ?? true,
      summaryTitle: map['summaryTitle'] as String?,
      summaryDescription: map['summaryDescription'] as String?,
      summaryContinueLabel: map['summaryContinueLabel'] as String?,
      permissionDescriptions: permissionDescriptions,
    );
  }

  static Color? _colorFromHex(String hex) {
    final h = hex.replaceFirst('#', '');
    if (h.length == 6 || h.length == 8) {
      final v = int.tryParse('FF$h', radix: 16);
      if (v != null) return Color(v);
    }
    return null;
  }
}

class _PermissionStepWidget extends StatefulWidget {
  const _PermissionStepWidget({
    required this.permissions,
    required this.onComplete,
    this.config,
  });

  final List<({PermissionType permission, bool isOptional})> permissions;
  final VoidCallback onComplete;
  final PermissionHelperBottomSheetConfig? config;

  @override
  State<_PermissionStepWidget> createState() => _PermissionStepWidgetState();
}

class _PermissionStepWidgetState extends State<_PermissionStepWidget> {
  int _index = 0;
  bool _summaryViewed = false;

  bool get _showSummaryFirst =>
      widget.config?.showSummaryFirst ?? true;

  void _next() {
    if (_index >= widget.permissions.length - 1) {
      Navigator.of(context).pop();
      LocalStorageHelper.setItem('osmea_permission_helper_pending', false);
      widget.onComplete();
    } else {
      setState(() => _index++);
    }
  }

  void _onSummaryContinue() {
    setState(() => _summaryViewed = true);
  }

  String _getRationale(PermissionType permission) {
    final custom = widget.config?.permissionDescriptions?[permission.name];
    if (custom != null && custom.isNotEmpty) return custom;
    return _defaultRationale(permission);
  }

  Future<void> _handleGrant() async {
    final current = widget.permissions[_index];
    final granted = await PermissionHelper.instance
        .requestPermission(current.permission);
    if (!granted && !current.isOptional) {
      await PermissionHelper.instance.openAppSettings();
    }
    _next();
  }

  void _handleSkip() {
    _next();
  }

  void _handleNotNow() {
    Navigator.of(context).pop();
    LocalStorageHelper.setItem('osmea_permission_helper_pending', false);
    widget.onComplete();
  }

  Widget _buildSummaryStep(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor =
        widget.config?.primaryColor ?? theme.colorScheme.primary;
    final textColor = widget.config?.textColor ??
        theme.textTheme.bodyLarge?.color ??
        Colors.black87;
    final title =
        widget.config?.summaryTitle ?? 'Permissions needed';
    final description = widget.config?.summaryDescription ??
        'This app needs access to the following:';
    final continueLabel =
        widget.config?.summaryContinueLabel ?? 'Continue';

    if (widget.config?.summaryBuilder != null) {
      return SafeArea(
        child: widget.config!.summaryBuilder!(
          context,
          widget.permissions,
          _onSummaryContinue,
          _handleNotNow,
        ),
      );
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: widget.config?.titleStyle ??
                  theme.textTheme.titleLarge?.copyWith(color: textColor),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: widget.config?.descriptionStyle ??
                  theme.textTheme.bodyMedium?.copyWith(color: textColor),
            ),
            const SizedBox(height: 20),
            ...widget.permissions.map((p) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        _iconForPermission(p.permission),
                        size: 20,
                        color: primaryColor,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _permissionDisplayName(p.permission),
                              style: theme.textTheme.titleSmall
                                  ?.copyWith(
                                    color: textColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              _getRationale(p.permission),
                              style: theme.textTheme.bodySmall
                                  ?.copyWith(color: textColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _onSummaryContinue,
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
              ),
              child: Text(continueLabel),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: _handleNotNow,
              child: Text(widget.config?.notNowButtonLabel ?? 'Not Now'),
            ),
          ],
        ),
      ),
    );
  }

  IconData _iconForPermission(PermissionType p) {
    switch (p) {
      case PermissionType.camera:
        return Icons.camera_alt_outlined;
      case PermissionType.location:
      case PermissionType.locationWhenInUse:
        return Icons.location_on_outlined;
      case PermissionType.storage:
      case PermissionType.photos:
        return Icons.photo_library_outlined;
      case PermissionType.microphone:
        return Icons.mic_outlined;
      case PermissionType.contacts:
        return Icons.contacts_outlined;
      case PermissionType.notification:
        return Icons.notifications_outlined;
    }
  }

  String _permissionDisplayName(PermissionType p) {
    switch (p) {
      case PermissionType.camera:
        return 'Camera';
      case PermissionType.location:
        return 'Location';
      case PermissionType.locationWhenInUse:
        return 'Location (when in use)';
      case PermissionType.storage:
        return 'Storage';
      case PermissionType.photos:
        return 'Photos';
      case PermissionType.microphone:
        return 'Microphone';
      case PermissionType.contacts:
        return 'Contacts';
      case PermissionType.notification:
        return 'Notifications';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Summary step: show first if enabled and not yet viewed
    if (_showSummaryFirst && !_summaryViewed) {
      return _buildSummaryStep(context);
    }

    final current = widget.permissions[_index];
    final rationale = _getRationale(current.permission);
    final theme = Theme.of(context);
    final primaryColor = widget.config?.primaryColor ?? theme.colorScheme.primary;
    final textColor = widget.config?.textColor ?? theme.textTheme.bodyLarge?.color ?? Colors.black87;
    final grantLabel = widget.config?.grantButtonLabel ?? 'Allow';
    final skipLabel = widget.config?.skipButtonLabel ?? 'Skip';
    final notNowLabel = widget.config?.notNowButtonLabel ?? 'Not Now';

    Widget content;
    if (widget.config?.builder != null) {
      content = widget.config!.builder!(
        context,
        current.permission,
        rationale,
        current.isOptional,
        _handleGrant,
        _handleSkip,
        _handleNotNow,
      );
    } else {
      content = Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Permission: ${current.permission.name}',
              style: widget.config?.titleStyle ??
                  theme.textTheme.titleLarge?.copyWith(color: textColor),
            ),
            const SizedBox(height: 16),
            Text(
              rationale,
              style: widget.config?.descriptionStyle ??
                  theme.textTheme.bodyMedium?.copyWith(color: textColor),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _handleGrant,
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
              ),
              child: Text(grantLabel),
            ),
            if (current.isOptional) ...[
              const SizedBox(height: 8),
              TextButton(
                onPressed: _handleSkip,
                child: Text(skipLabel),
              ),
            ],
            const SizedBox(height: 8),
            TextButton(
              onPressed: _handleNotNow,
              child: Text(notNowLabel),
            ),
          ],
        ),
      );
    }

    return SafeArea(child: content);
  }
}
