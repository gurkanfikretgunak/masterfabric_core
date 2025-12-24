import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core_example/app/routes.dart' as app_routes;
import 'package:masterfabric_core_example/widgets/platform_scaffold.dart';

/// Helpers Hub View - Central hub for all helper demonstrations
class HelpersHubView extends StatelessWidget {
  const HelpersHubView({
    super.key,
    required this.goRoute,
  });

  final Function(String) goRoute;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: AppBar(
        title: const Text('Helpers Hub'),
        leading: GoRouter.of(context).canPop()
            ? IconButton(
                icon: const Icon(LucideIcons.arrowLeft),
                onPressed: () => GoRouter.of(context).pop(),
                tooltip: 'Back',
              )
            : null,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MasterFabric Core Helpers',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Explore all available helper utilities',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                  ),
            ),
            const SizedBox(height: 24),
            _buildHelperGrid(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHelperGrid(BuildContext context) {
    final helpers = [
      _HelperItem(
        title: 'Device Info',
        description: 'Get device information',
        icon: LucideIcons.smartphone,
        route: app_routes.AppRoutes.deviceInfoDemo,
      ),
      _HelperItem(
        title: 'Local Storage',
        description: 'Store and retrieve data',
        icon: LucideIcons.database,
        route: app_routes.AppRoutes.storageDemo,
      ),
      _HelperItem(
        title: 'Date & Time',
        description: 'Format dates and times',
        icon: LucideIcons.calendar,
        route: app_routes.AppRoutes.datetimeDemo,
      ),
      _HelperItem(
        title: 'URL Launcher',
        description: 'Launch URLs and apps',
        icon: LucideIcons.externalLink,
        route: app_routes.AppRoutes.urlLauncherDemo,
      ),
      _HelperItem(
        title: 'Permissions',
        description: 'Request runtime permissions',
        icon: LucideIcons.shield,
        route: app_routes.AppRoutes.permissionsDemo,
      ),
      _HelperItem(
        title: 'Share',
        description: 'Share content',
        icon: LucideIcons.share2,
        route: app_routes.AppRoutes.shareDemo,
      ),
      _HelperItem(
        title: 'File Download',
        description: 'Download files with progress',
        icon: LucideIcons.download,
        route: app_routes.AppRoutes.downloadDemo,
      ),
      _HelperItem(
        title: 'App Config',
        description: 'Load app configuration',
        icon: LucideIcons.settings,
        route: app_routes.AppRoutes.configDemo,
      ),
      _HelperItem(
        title: 'Package Info',
        description: 'Get app package information',
        icon: LucideIcons.package,
        route: app_routes.AppRoutes.packageInfoDemo,
      ),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.1,
      ),
      itemCount: helpers.length,
      itemBuilder: (context, index) {
        final helper = helpers[index];
        return Card(
          child: InkWell(
            onTap: () => goRoute(helper.route),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    helper.icon,
                    size: 32,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    helper.title,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    helper.description,
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _HelperItem {
  final String title;
  final String description;
  final IconData icon;
  final String route;

  _HelperItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.route,
  });
}

