import 'package:masterfabric_core/src/base/base_view_model_cubit.dart';
import 'package:masterfabric_core/src/views/auth/cubit/auth_state.dart';
import 'package:masterfabric_core/src/resources/resources.g.dart';
import 'package:injectable/injectable.dart';

/// 🔐 **Authentication Cubit**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Cubit that manages authentication operations with MVVM pattern
///
/// {@category ViewModels}
/// {@subCategory AuthCubit}

@injectable
class AuthCubit extends BaseViewModelCubit<AuthState> {
  AuthCubit() : super(const AuthState());

  void switchTab(AuthTabType tab) {
    stateChanger(state.copyWith(currentTab: tab, errorMessage: null));
  }

  Future<void> signIn(String email, String password) async {
    try {
      stateChanger(state.copyWith(isLoading: true, errorMessage: null));
      
      // TODO: Implement actual sign in logic
      await Future.delayed(const Duration(seconds: 1));
      
      // For now, just simulate success
      stateChanger(state.copyWith(
        isLoading: false,
        isAuthenticated: true,
        navigationTarget: '/home',
      ));
    } catch (e) {
      stateChanger(state.copyWith(
        isLoading: false,
        errorMessage: '${resources.auth.sign_in_failed}: $e',
      ));
    }
  }

  Future<void> signUp(String email, String password) async {
    try {
      stateChanger(state.copyWith(isLoading: true, errorMessage: null));
      
      // TODO: Implement actual sign up logic
      await Future.delayed(const Duration(seconds: 1));
      
      // For now, just simulate success
      stateChanger(state.copyWith(
        isLoading: false,
        isAuthenticated: true,
        navigationTarget: '/home',
      ));
    } catch (e) {
      stateChanger(state.copyWith(
        isLoading: false,
        errorMessage: '${resources.auth.sign_up_failed}: $e',
      ));
    }
  }

  Future<void> signOut() async {
    stateChanger(state.copyWith(
      isAuthenticated: false,
      navigationTarget: '/auth',
    ));
  }
}
