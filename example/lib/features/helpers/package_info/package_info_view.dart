import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/package_info/cubit/package_info_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/package_info/cubit/package_info_state.dart';

/// Package Info Helper Demo View
class PackageInfoView extends MasterViewCubit<PackageInfoCubit, PackageInfoState> {
  PackageInfoView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            return AppBar(
              title: const Text('Package Info Helper'),
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
                  onPressed: () => viewModel.loadPackageInfo(),
                  tooltip: 'Refresh',
                ),
              ],
            );
          },
        );

  @override
  Future<void> initialContent(PackageInfoCubit viewModel, BuildContext context) async {
    await viewModel.loadPackageInfo();
  }

  @override
  Widget viewContent(BuildContext context, PackageInfoCubit viewModel, PackageInfoState state) {
    return BlocBuilder<PackageInfoCubit, PackageInfoState>(
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
                Text('Error: ${state.errorMessage}'),
                ElevatedButton(
                  onPressed: () => viewModel.loadPackageInfo(),
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
              _buildInfoCard(
                context,
                icon: LucideIcons.package,
                title: 'App Name',
                value: state.appName ?? 'Unknown',
              ),
              const SizedBox(height: 12),
              _buildInfoCard(
                context,
                icon: LucideIcons.hash,
                title: 'Package Name',
                value: state.packageName ?? 'Unknown',
              ),
              const SizedBox(height: 12),
              _buildInfoCard(
                context,
                icon: LucideIcons.tag,
                title: 'Version',
                value: state.version ?? 'Unknown',
              ),
              const SizedBox(height: 12),
              _buildInfoCard(
                context,
                icon: LucideIcons.code,
                title: 'Build Number',
                value: state.buildNumber ?? 'Unknown',
              ),
              const SizedBox(height: 12),
              _buildInfoCard(
                context,
                icon: LucideIcons.info,
                title: 'Version & Build',
                value: state.versionAndBuild ?? 'Unknown',
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 24, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

