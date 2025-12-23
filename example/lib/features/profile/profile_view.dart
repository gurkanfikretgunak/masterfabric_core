import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/profile/cubit/profile_cubit.dart';
import 'package:masterfabric_core_example/features/profile/cubit/profile_state.dart';

/// Profile View - Example of using MasterViewCubit with helper utilities
class ProfileView extends MasterViewCubit<ProfileCubit, ProfileState> {
  ProfileView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            final canPop = GoRouter.of(context).canPop();
            return AppBar(
              title: const Text('Profile'),
              leading: canPop
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => GoRouter.of(context).pop(),
                      tooltip: 'Back',
                    )
                  : null,
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    // Navigate to settings or show settings dialog
                  },
                  tooltip: 'Settings',
                ),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () => viewModel.loadProfile(),
                  tooltip: 'Refresh',
                ),
              ],
            );
          },
        );

  @override
  Future<void> initialContent(ProfileCubit viewModel, BuildContext context) async {
    await viewModel.loadProfile();
  }

  @override
  Widget viewContent(BuildContext context, ProfileCubit viewModel, ProfileState state) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      bloc: viewModel,
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Header
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Text(
                          state.userName?[0].toUpperCase() ?? 'U',
                          style: const TextStyle(fontSize: 32),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        state.userName ?? 'User',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        state.email ?? 'No email',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Device Information Section
              Text(
                'Device Information',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),

              Card(
                child: Column(
                  children: [
                    _buildInfoTile(
                      context,
                      'Platform',
                      state.platform ?? 'Unknown',
                      Icons.phone_android,
                    ),
                    _buildInfoTile(
                      context,
                      'Device ID',
                      state.deviceId ?? 'Unknown',
                      Icons.fingerprint,
                    ),
                    _buildInfoTile(
                      context,
                      'Manufacturer',
                      state.manufacturer ?? 'Unknown',
                      Icons.business,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Actions Section
              Text(
                'Actions',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),

              Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('Sign Out'),
                      onTap: () => viewModel.signOut(),
                    ),
                    ListTile(
                      leading: const Icon(Icons.refresh),
                      title: const Text('Refresh Data'),
                      onTap: () => viewModel.loadProfile(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildInfoTile(
    BuildContext context,
    String label,
    String value,
    IconData icon,
  ) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}

