import '../../context/template_context.dart';

/// Template for `lib/app/routes.dart`.
class RoutesTemplate {
  RoutesTemplate._();

  static String generate(TemplateContext ctx) => '''
import 'package:go_router/go_router.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

import '../views/home/home_view.dart';
import '../views/profile/profile_view.dart';
import '../views/settings/settings_view.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String onboarding = '/onboarding';
  static const String auth = '/auth';

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
            config: null,
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
          path: home,
          builder: (context, state) => HomeView(
            goRoute: (path) => context.push(path),
          ),
        ),
        GoRoute(
          path: profile,
          builder: (context, state) => ProfileView(
            goRoute: (path) => context.push(path),
          ),
        ),
        GoRoute(
          path: settings,
          builder: (context, state) => SettingsView(
            goRoute: (path) => context.push(path),
          ),
        ),
      ],
    );
  }
}
''';
}
