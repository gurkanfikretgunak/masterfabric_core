import 'package:masterfabric_core/src/base/base_view_model_cubit.dart';
import 'package:masterfabric_core/src/views/account/cubit/account_state.dart';
import 'package:injectable/injectable.dart';

/// 👤 **Account Cubit**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Cubit that manages account operations with MVVM pattern
///
/// {@category ViewModels}
/// {@subCategory AccountCubit}

@injectable
class AccountCubit extends BaseViewModelCubit<AccountState> {
  AccountCubit() : super(const AccountState());

  Future<void> init() async {
    stateChanger(state.copyWith(isLoading: true));
    // Load user data
    await Future.delayed(const Duration(seconds: 1));
    stateChanger(state.copyWith(
      isLoading: false,
      userName: 'John Doe',
      userEmail: 'john.doe@example.com',
    ));
  }

  Future<void> logout() async {
    // TODO: Implement logout logic
    stateChanger(state.copyWith(navigationTarget: '/auth'));
  }
}
