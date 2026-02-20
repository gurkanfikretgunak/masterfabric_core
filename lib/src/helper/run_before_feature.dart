/// Features that can be initialized during [MasterApp.runBefore].
///
/// Pass a `Set<RunBeforeFeature>` to `MasterApp.runBefore(runBeforeFeatures: …)`
/// to control which run-before flows execute at app startup.
///
/// ```dart
/// await MasterApp.runBefore(
///   runBeforeFeatures: {
///     RunBeforeFeature.permissions,
///   },
/// );
/// ```
enum RunBeforeFeature {
  /// When enabled and [permissionsConfiguration] in app_config has
  /// requiredPermissions or optionalPermissions with requestOnStartup,
  /// stores the permission list and triggers the Permission Helper bottom
  /// sheet after splash/launch.
  permissions,
}
