import 'package:go_router/go_router.dart';
import 'package:masterfabric_core/masterfabric_core.dart' hide AppRoutes, PermissionsView;
import 'package:masterfabric_core_example/features/home/home_view.dart';
import 'package:masterfabric_core_example/features/products/products_view.dart';
import 'package:masterfabric_core_example/features/profile/profile_view.dart';
import 'package:masterfabric_core_example/features/helpers/helpers_hub_view.dart';
import 'package:masterfabric_core_example/features/helpers/device_info/device_info_view.dart';
import 'package:masterfabric_core_example/features/helpers/storage/storage_view.dart';
import 'package:masterfabric_core_example/features/helpers/datetime/datetime_view.dart';
import 'package:masterfabric_core_example/features/helpers/url_launcher/url_launcher_view.dart';
import 'package:masterfabric_core_example/features/helpers/permissions/permissions_view.dart';
import 'package:masterfabric_core_example/features/helpers/share/share_view.dart';
import 'package:masterfabric_core_example/features/helpers/download/download_view.dart';
import 'package:masterfabric_core_example/features/helpers/config/config_view.dart';
import 'package:masterfabric_core_example/features/helpers/package_info/package_info_view.dart';

/// Application routes
class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String products = '/products';
  static const String profile = '/profile';
  static const String auth = '/auth';
  static const String onboarding = '/onboarding';
  static const String helpersHub = '/helpers';
  static const String deviceInfoDemo = '/helpers/device-info';
  static const String storageDemo = '/helpers/storage';
  static const String datetimeDemo = '/helpers/datetime';
  static const String urlLauncherDemo = '/helpers/url-launcher';
  static const String permissionsDemo = '/helpers/permissions';
  static const String shareDemo = '/helpers/share';
  static const String downloadDemo = '/helpers/download';
  static const String configDemo = '/helpers/config';
  static const String packageInfoDemo = '/helpers/package-info';

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
        
        // Helpers Hub
        GoRoute(
          path: helpersHub,
          builder: (context, state) => HelpersHubView(
            goRoute: (path) => context.go(path),
          ),
        ),
        
        // Helper Demos
        GoRoute(
          path: deviceInfoDemo,
          builder: (context, state) => DeviceInfoView(
            goRoute: (path) => context.go(path),
          ),
        ),
        GoRoute(
          path: storageDemo,
          builder: (context, state) => StorageView(
            goRoute: (path) => context.go(path),
          ),
        ),
        GoRoute(
          path: datetimeDemo,
          builder: (context, state) => DateTimeView(
            goRoute: (path) => context.go(path),
          ),
        ),
        GoRoute(
          path: urlLauncherDemo,
          builder: (context, state) => UrlLauncherView(
            goRoute: (path) => context.go(path),
          ),
        ),
        GoRoute(
          path: permissionsDemo,
          builder: (context, state) => PermissionsView(
            goRoute: (path) => context.go(path),
          ),
        ),
        GoRoute(
          path: shareDemo,
          builder: (context, state) => ShareView(
            goRoute: (path) => context.go(path),
          ),
        ),
        GoRoute(
          path: downloadDemo,
          builder: (context, state) => DownloadView(
            goRoute: (path) => context.go(path),
          ),
        ),
        GoRoute(
          path: configDemo,
          builder: (context, state) => ConfigView(
            goRoute: (path) => context.go(path),
          ),
        ),
        GoRoute(
          path: packageInfoDemo,
          builder: (context, state) => PackageInfoView(
            goRoute: (path) => context.go(path),
          ),
        ),
      ],
    );
  }
}

