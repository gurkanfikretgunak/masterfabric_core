import 'package:go_router/go_router.dart';
import 'package:masterfabric_core/masterfabric_core.dart' hide AppRoutes;
import 'package:masterfabric_core_example/features/home/home_view.dart';
import 'package:masterfabric_core_example/features/products/products_view.dart';
import 'package:masterfabric_core_example/features/profile/profile_view.dart';

/// Application routes
class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String products = '/products';
  static const String profile = '/profile';
  static const String auth = '/auth';
  static const String onboarding = '/onboarding';

  /// Create GoRouter configuration
  static GoRouter createRouter() {
    return GoRouter(
      initialLocation: splash,
      routes: [
        // Splash Screen (from masterfabric_core)
        GoRoute(
          path: splash,
          builder: (context, state) => SplashView(
            goRoute: (path) => context.go(path),
          ),
        ),
        
        // Onboarding (from masterfabric_core)
        GoRoute(
          path: onboarding,
          builder: (context, state) => OnboardingView(
            config: null, // Configure as needed
            goRoute: (path) => context.go(path),
            arguments: state.uri.queryParameters,
          ),
        ),
        
        // Auth (from masterfabric_core)
        GoRoute(
          path: auth,
          builder: (context, state) => AuthView(
            goRoute: (path) => context.go(path),
            arguments: state.uri.queryParameters,
          ),
        ),
        
        // Home (custom view)
        GoRoute(
          path: home,
          builder: (context, state) => HomeView(
            goRoute: (path) => context.go(path),
          ),
        ),
        
        // Products (custom view)
        GoRoute(
          path: products,
          builder: (context, state) => ProductsView(
            goRoute: (path) => context.go(path),
          ),
        ),
        
        // Profile (custom view)
        GoRoute(
          path: profile,
          builder: (context, state) => ProfileView(
            goRoute: (path) => context.go(path),
          ),
        ),
      ],
    );
  }
}

