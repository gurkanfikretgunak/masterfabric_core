import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterfabric_core/masterfabric_core.dart' hide AppRoutes;
import 'package:masterfabric_core_example/app/routes.dart' as app_routes;
import 'package:masterfabric_core_example/features/home/cubit/home_cubit.dart';
import 'package:masterfabric_core_example/features/home/cubit/home_state.dart';

/// Home View - Example of using MasterViewCubit
class HomeView extends MasterViewCubit<HomeCubit, HomeState> {
  HomeView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
        );

  @override
  Future<void> initialContent(HomeCubit viewModel, BuildContext context) async {
    // Load initial data
    await viewModel.loadData();
  }

  @override
  Widget viewContent(BuildContext context, HomeCubit viewModel, HomeState state) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: viewModel,
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.hasError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Error: ${state.errorMessage}'),
                ElevatedButton(
                  onPressed: () => viewModel.loadData(),
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
              // Welcome Section
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to MasterFabric Core Example',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'This is an example app demonstrating the usage of masterfabric_core package.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Quick Actions
              Text(
                'Quick Actions',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _buildActionCard(
                    context,
                    title: 'Products',
                    icon: Icons.shopping_bag,
                    onTap: () => super.goRoute(app_routes.AppRoutes.products),
                  ),
                  _buildActionCard(
                    context,
                    title: 'Profile',
                    icon: Icons.person,
                    onTap: () => super.goRoute(app_routes.AppRoutes.profile),
                  ),
                  _buildActionCard(
                    context,
                    title: 'Auth',
                    icon: Icons.login,
                    onTap: () => super.goRoute(app_routes.AppRoutes.auth),
                  ),
                ],
              ),
              
              const SizedBox(height: 24),
              
              // Features Section
              Text(
                'Package Features',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              
              _buildFeatureItem(
                context,
                'State Management',
                'Using Cubit pattern with MasterViewCubit',
              ),
              _buildFeatureItem(
                context,
                'Navigation',
                'GoRouter integration with route management',
              ),
              _buildFeatureItem(
                context,
                'Helpers',
                'LocalStorage, DeviceInfo, Permissions, and more',
              ),
              _buildFeatureItem(
                context,
                'Pre-built Views',
                'Splash, Auth, Onboarding, and utility views',
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildActionCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 32),
              const SizedBox(height: 8),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(BuildContext context, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Colors.green),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

