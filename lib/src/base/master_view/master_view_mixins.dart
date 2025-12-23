part of master_view; // Indicate that this file is part of the master_view library

/// Shared UI helpers for MasterView (BLoC-based).
/// Keep helpers minimal; compose richer UIs in concrete views.
mixin MasterViewMixin on StatelessWidget {
  MasterViewTypes get currentView;

  /// Build a simple loading indicator.
  ///
  /// - [color]: progress color (default: blue)
  /// - [size]: spinner stroke width (default: 50)
  Widget buildLoading({Color color = Colors.blue, double size = 50.0}) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(color),
        strokeWidth: size,
      ),
    );
  }

  /// Build a minimal error UI with optional [onRetry] action button.
  Widget buildError(String message, {VoidCallback? onRetry}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: $message'), // Display the error message
          if (onRetry != null) // Show retry button if provided
            ElevatedButton(
              onPressed: onRetry,
              child: Text('Retry'),
            ),
        ],
      ),
    );
  }
}

