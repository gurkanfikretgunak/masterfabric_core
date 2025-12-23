part of master_view_hydrated_cubit;

mixin MasterViewHydratedCubitMixin on StatelessWidget {
  /// The currently active view state. Used to toggle loading, content, and
  /// error presentations.
  MasterViewHydratedCubitTypes get currentView;

  /// Displays a centered `CircularProgressIndicator`. Override or wrap if you
  /// need brand-specific loading experiences.
  Widget buildLoading({Color color = Colors.blue, double size = 50.0}) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(color),
        strokeWidth: size,
      ),
    );
  }

  /// Basic error presentation with optional retry action. Customize in
  /// subclasses for richer failure states.
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


