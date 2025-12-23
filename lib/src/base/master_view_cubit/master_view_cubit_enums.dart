part of master_view_cubit;

/// High-level screen states for MasterViewCubit scaffolding and messaging.
///
/// These map to common UX modes and are used to control:
/// - Which snackbar/text to show automatically
/// - Conditional layouts (e.g., maintenance or webview screens)
/// - Generic fallbacks when detailed UI is not yet available
enum MasterViewCubitTypes {
  /// Data or app is loading
  loading,

  /// Normal content state
  content,

  /// Error has occurred
  error,

  /// No data available
  empty,

  /// User is not authorized
  unauthorized,

  /// Operation timed out
  timeout,

  /// App is under maintenance
  maintenance,

  /// A webview mode is active
  webview,
}


