import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/device_info/cubit/device_info_cubit.dart';
import 'package:masterfabric_core_example/features/helpers/device_info/cubit/device_info_state.dart';

/// Device Info Helper Demo View
class DeviceInfoView extends MasterViewCubit<DeviceInfoCubit, DeviceInfoState> {
  DeviceInfoView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            return AppBar(
              title: const Text('Device Info Helper'),
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
                  onPressed: () => viewModel.loadDeviceInfo(),
                  tooltip: 'Refresh',
                ),
              ],
            );
          },
        );

  @override
  Future<void> initialContent(DeviceInfoCubit viewModel, BuildContext context) async {
    await viewModel.loadDeviceInfo();
  }

  @override
  Widget viewContent(BuildContext context, DeviceInfoCubit viewModel, DeviceInfoState state) {
    return BlocBuilder<DeviceInfoCubit, DeviceInfoState>(
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
                  onPressed: () => viewModel.loadDeviceInfo(),
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
                icon: LucideIcons.smartphone,
                title: 'Platform',
                value: state.platform ?? 'Unknown',
              ),
              const SizedBox(height: 12),
              _buildInfoCard(
                context,
                icon: LucideIcons.smartphone,
                title: 'Device Name',
                value: state.deviceName ?? 'Unknown',
              ),
              const SizedBox(height: 12),
              _buildInfoCard(
                context,
                icon: LucideIcons.scanLine,
                title: 'Device ID',
                value: state.deviceId ?? 'Unknown',
              ),
              const SizedBox(height: 12),
              _buildInfoCard(
                context,
                icon: LucideIcons.cpu,
                title: 'Manufacturer',
                value: state.manufacturer ?? 'Unknown',
              ),
              const SizedBox(height: 12),
              _buildInfoCard(
                context,
                icon: LucideIcons.monitor,
                title: 'Model',
                value: state.model ?? 'Unknown',
              ),
              const SizedBox(height: 12),
              _buildInfoCard(
                context,
                icon: LucideIcons.info,
                title: 'System Version',
                value: state.systemVersion ?? 'Unknown',
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

