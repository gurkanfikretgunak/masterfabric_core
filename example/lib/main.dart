import 'package:flutter/material.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

import 'app/app.dart';
import 'app/di/injection.dart' as di;
import 'app/routes.dart' as app_routes;
import 'src/resources/resources.g.dart' as example_resources;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize MasterApp components FIRST (especially hydrated storage)
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

  // Initialize localization - use device locale or default to English
  await example_resources.LocaleSettings.useDeviceLocale();

  // Configure dependency injection AFTER storage is initialized
  di.configureDependencies();

  // Create router
  final router = app_routes.AppRoutes.createRouter();

  runApp(App(router: router));
}
