import '../../context/template_context.dart';

/// Template for `assets/app_config.json`.
class AppConfigTemplate {
  AppConfigTemplate._();

  static String generate(TemplateContext ctx) => '''
{
  "appSettings": {
    "appName": "${ctx.projectNamePascal}",
    "appVersion": "1.0.0",
    "environment": "development",
    "debugMode": true,
    "maintenanceMode": false
  },
  "uiConfiguration": {
    "themeMode": "light",
    "fontScale": 1,
    "devModeGrid": false,
    "devModeSpacer": false,
    "showPerformanceOverlay": false
  },
  "splashConfiguration": {
    "style": "startup",
    "duration": 2000,
    "autoNavigate": true,
    "backgroundColor": "#FFFFFF",
    "textColor": "#000000",
    "primaryColor": "#2196F3",
    "logoUrl": "",
    "logoWidth": 200,
    "logoHeight": 200,
    "showLoadingIndicator": true,
    "loadingIndicatorSize": 40,
    "loadingText": "Loading...",
    "showAppVersion": true,
    "appVersion": "1.0.0",
    "showCopyright": true,
    "copyrightText": "\\u00a9 2025 ${ctx.projectNamePascal}"
  },
  "featureFlags": {
    "onboardingEnabled": true,
    "analyticsEnabled": false
  },
  "navigationConfiguration": {
    "defaultRoute": "/",
    "deepLinkingEnabled": true
  },
  "apiConfiguration": {
    "baseUrl": "https://api.example.com",
    "timeout": 30000,
    "retryCount": 3
  },
  "permissionsConfiguration": {
    "requestOnStartup": false,
    "requiredPermissions": [],
    "optionalPermissions": [],
    "permissionDescriptions": {}
  },
  "localizationConfiguration": {
    "defaultLocale": "en",
    "supportedLocales": ["en"]
  },
  "storageConfiguration": {
    "localStorageType": "hiveCe",
    "encryptionEnabled": false,
    "cacheEnabled": true
  }
}
''';
}
