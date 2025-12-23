import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterfabric_core/src/views/auth/cubit/auth_cubit.dart';
import 'package:masterfabric_core/src/views/auth/cubit/auth_state.dart';

/// 🔐 **Authentication View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Authentication view with Sign In and Sign Up tabs
/// Uses MasterViewCubit for lifecycle management
/// {@category Views}
/// {@subCategory AuthView}

class AuthView extends MasterViewCubit<AuthCubit, AuthState> {
  AuthView({
    required Function(String) goRoute,
    Map<String, dynamic> arguments = const {},
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('🔐 Auth View Start!');
    // Initialize auth cubit if needed
  }

  @override
  Widget viewContent(BuildContext context, AuthCubit viewModel, AuthState state) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        // Handle navigation when auth succeeds
        if (state.isAuthenticated && state.navigationTarget != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (context.mounted) {
              super.goRoute(state.navigationTarget!);
            }
          });
        }
      },
      child: DefaultTabController(
        length: 2,
        initialIndex: state.currentTab == AuthTabType.signIn ? 0 : 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text(resources.auth.title),
            bottom: TabBar(
              onTap: (index) {
                viewModel.switchTab(index == 0 ? AuthTabType.signIn : AuthTabType.signUp);
              },
              tabs: [
                Tab(text: resources.auth.sign_in),
                Tab(text: resources.auth.sign_up),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              _buildSignInForm(context, viewModel, state),
              _buildSignUpForm(context, viewModel, state),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignInForm(BuildContext context, AuthCubit viewModel, AuthState state) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: resources.auth.email),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(labelText: resources.auth.password),
          ),
          const SizedBox(height: 24),
          if (state.isLoading)
            const CircularProgressIndicator()
          else
            ElevatedButton(
              onPressed: () {
                viewModel.signIn(emailController.text, passwordController.text);
              },
              child: Text(resources.auth.sign_in),
            ),
          if (state.errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                state.errorMessage!,
                style: const TextStyle(color: Colors.red),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSignUpForm(BuildContext context, AuthCubit viewModel, AuthState state) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: resources.auth.email),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(labelText: resources.auth.password),
          ),
          const SizedBox(height: 24),
          if (state.isLoading)
            const CircularProgressIndicator()
          else
            ElevatedButton(
              onPressed: () {
                viewModel.signUp(emailController.text, passwordController.text);
              },
              child: Text(resources.auth.sign_up),
            ),
          if (state.errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                state.errorMessage!,
                style: const TextStyle(color: Colors.red),
              ),
            ),
        ],
      ),
    );
  }
}
