part of master_view_cubit;

/// Shared UI helpers for MasterViewCubit-based screens.
///
/// Provides small, reusable widgets for common states like loading and error.
/// Keep these minimal so feature screens can compose their own detailed UIs.
///
/// Example:
/// ```dart
/// class ProductsView extends MasterViewCubit<MyCubit, MyState> {
///   @override
///   MasterViewCubitTypes get currentView => MasterViewCubitTypes.content;
///
///   @override
///   Widget viewContent(BuildContext context, MyCubit vm, MyState state) {
///     if (state is LoadingState) return buildLoading();
///     if (state is ErrorState) return buildError(state.message);
///     return ProductsList(items: state.items);
///   }
/// }
/// ```
mixin MasterViewCubitMixin on StatelessWidget {
  /// The current high-level view state used by the scaffold and snackbars.
  MasterViewCubitTypes get currentView;

  /// Simple loading indicator for quick feedback while data loads.
  ///
  /// - [color]: progress color, defaults to blue
  /// - [size]: stroke width for the spinner, defaults to 50
  Widget buildLoading({Color color = Colors.blue, double size = 50.0}) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(color),
        strokeWidth: size,
      ),
    );
  }

  /// Minimal error presentation with optional retry handler.
  ///
  /// Pass [onRetry] to show a retry button beneath the message.
  Widget buildError(String message, {VoidCallback? onRetry}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: $message'),
          if (onRetry != null)
            ElevatedButton(
              onPressed: onRetry,
              child: Text('Retry'),
            ),
        ],
      ),
    );
  }
}


