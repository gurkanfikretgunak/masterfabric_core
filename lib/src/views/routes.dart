import 'package:go_router/go_router.dart';
import 'package:masterfabric_core/src/views/account/account_view.dart';
import 'package:masterfabric_core/src/views/auth/auth_view.dart';
import 'package:masterfabric_core/src/views/image_detail/image_detail_view.dart';
import 'package:masterfabric_core/src/views/onboarding/onboarding_view.dart';
import 'package:masterfabric_core/src/views/permissions/permissions_view.dart';
import 'package:masterfabric_core/src/views/search/search_view.dart';
import 'package:masterfabric_core/src/views/splash/splash_view.dart';
import 'package:permission_handler/permission_handler.dart';

/// Route definitions for the app
class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String auth = '/auth';
  static const String account = '/account';
  static const String permissions = '/permissions';
  static const String search = '/search';
  static const String imageDetail = '/image-detail';

  /// Create GoRouter configuration
  static GoRouter createRouter() {
    return GoRouter(
      initialLocation: splash,
      routes: [
        GoRoute(
          path: splash,
          builder: (context, state) => SplashView(
            goRoute: (path) => context.go(path),
          ),
        ),
        GoRoute(
          path: onboarding,
          builder: (context, state) => OnboardingView(
            config: null, // Should be provided
            goRoute: (path) => context.go(path),
            arguments: state.uri.queryParameters,
          ),
        ),
        GoRoute(
          path: auth,
          builder: (context, state) => AuthView(
            goRoute: (path) => context.go(path),
            arguments: state.uri.queryParameters,
          ),
        ),
        GoRoute(
          path: account,
          builder: (context, state) => AccountView(
            goRoute: (path) => context.go(path),
            arguments: state.uri.queryParameters,
          ),
        ),
        GoRoute(
          path: permissions,
          builder: (context, state) => PermissionsView(
            permissions: state.uri.queryParameters['permissions']
                    ?.split(',')
                    .map((p) => Permission.values.firstWhere(
                          (perm) => perm.toString() == p,
                          orElse: () => Permission.camera,
                        ))
                    .toList() ??
                [],
            goRoute: (path) => context.go(path),
            arguments: state.uri.queryParameters,
          ),
        ),
        GoRoute(
          path: search,
          builder: (context, state) => SearchView(
            goRoute: (path) => context.go(path),
            arguments: state.uri.queryParameters,
          ),
        ),
        GoRoute(
          path: imageDetail,
          builder: (context, state) => ImageDetailView(
            imageUrl: state.uri.queryParameters['url'] ?? '',
            title: state.uri.queryParameters['title'],
            goRoute: (path) => context.go(path),
            arguments: state.uri.queryParameters,
          ),
        ),
      ],
    );
  }
}
