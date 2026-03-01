import '../../context/template_context.dart';

/// Template for the `lib/main.dart` entry point.
class MainTemplate {
  MainTemplate._();

  static String generate(TemplateContext ctx) => '''
import 'package:flutter/material.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

import 'app/app.dart';
import 'app/di/injection.dart' as di;
import 'app/routes.dart' as app_routes;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await MasterApp.runBefore(
    assetConfigPath: 'assets/app_config.json',
    hydrated: true,
    requestTrackingTransparency: true,
    networkFeatures: {
      NetworkInitFeature.cloudflareTrace,
      NetworkInitFeature.connectivity,
    },
    runBeforeFeatures: {
      RunBeforeFeature.permissions,
    },
  );

  di.configureDependencies();

  final router = app_routes.AppRoutes.createRouter();

  runApp(App(router: router));
}
''';
}
