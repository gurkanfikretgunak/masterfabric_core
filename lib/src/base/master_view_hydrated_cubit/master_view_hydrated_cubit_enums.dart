part of master_view_hydrated_cubit;

/// Named view states that `MasterViewHydratedCubit` understands to drive UI and
/// snackbar behaviour. Choose the type that best maps to the current screen
/// context; the base class handles how each state is surfaced.
enum MasterViewHydratedCubitTypes {
  loading,
  content,
  error,
  empty,
  unauthorized,
  timeout,
  maintenance,
  webview,
}


