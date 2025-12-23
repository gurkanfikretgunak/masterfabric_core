part of master_view; // Indicate that this file is part of the master_view library

/// High-level screen states for MasterView (BLoC-based).
///
/// These values control:
/// - Which default Snackbar message to show automatically
/// - When to render generic fallbacks (e.g., maintenance)
/// - Basic UX modes before/while detailed content is ready
enum MasterViewTypes {
  /// Data or UI is loading
  loading,

  /// Normal content state
  content,

  /// An error occurred
  error,

  /// No data available
  empty,

  /// User is not authorized to view content
  unauthorized,

  /// Operation timed out
  timeout,

  /// Application is under maintenance
  maintenance,

  /// A webview mode is active
  webview,
}

