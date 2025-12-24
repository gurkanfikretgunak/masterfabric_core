import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/config/cubit/config_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/config/cubit/config_state.dart';

/// App Config Helper Demo View
class ConfigView extends MasterViewCubit<ConfigCubit, ConfigState> {
  ConfigView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            return AppBar(
              title: const Text('App Config Helper'),
              leading: GoRouter.of(context).canPop()
                  ? IconButton(
                      icon: const Icon(LucideIcons.arrowLeft),
                      onPressed: () {
                        if (GoRouter.of(context).canPop()) {
                          GoRouter.of(context).pop();
                        }
                      },
                      tooltip: 'Back',
                    )
                  : null,
              actions: [
                IconButton(
                  icon: const Icon(LucideIcons.refreshCw),
                  onPressed: () => viewModel.loadConfig(),
                  tooltip: 'Refresh',
                ),
              ],
            );
          },
        );

  @override
  Future<void> initialContent(ConfigCubit viewModel, BuildContext context) async {
    await viewModel.loadConfig();
  }

  @override
  Widget viewContent(BuildContext context, ConfigCubit viewModel, ConfigState state) {
    return BlocBuilder<ConfigCubit, ConfigState>(
      bloc: viewModel,
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.hasError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(LucideIcons.x, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text(
                  'Error loading config',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  state.errorMessage ?? 'Unknown error',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => viewModel.loadConfig(),
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(LucideIcons.settings, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'App Configuration',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Loaded from assets/app_config.json',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
              ),
              const SizedBox(height: 24),
              if (state.config != null) ...[
                _buildConfigSection(
                  context,
                  'App Settings',
                  state.config!['appSettings'] as Map<String, dynamic>?,
                ),
                const SizedBox(height: 16),
                _buildConfigSection(
                  context,
                  'UI Configuration',
                  state.config!['uiConfiguration'] as Map<String, dynamic>?,
                ),
                const SizedBox(height: 16),
                _buildConfigSection(
                  context,
                  'Splash Configuration',
                  state.config!['splashConfiguration'] as Map<String, dynamic>?,
                ),
                const SizedBox(height: 16),
                _buildConfigSection(
                  context,
                  'API Configuration',
                  state.config!['apiConfiguration'] as Map<String, dynamic>?,
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildConfigSection(BuildContext context, String title, Map<String, dynamic>? data) {
    if (data == null) return const SizedBox.shrink();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            ...data.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        entry.key,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        entry.value.toString(),
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

