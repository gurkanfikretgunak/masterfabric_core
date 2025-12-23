import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:masterfabric_core/src/views/account/cubit/account_cubit.dart';
import 'package:masterfabric_core/src/views/account/cubit/account_state.dart';

/// 👤 **Account View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Account view for user profile and settings
/// Uses MasterViewCubit for lifecycle management
/// {@category Views}
/// {@subCategory AccountView}

class AccountView extends MasterViewCubit<AccountCubit, AccountState> {
  AccountView({
    required Function(String) goRoute,
    Map<String, dynamic> arguments = const {},
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('👤 Account View Start!');
    await viewModel.init();
  }

  @override
  Widget viewContent(BuildContext context, AccountCubit viewModel, AccountState state) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.person),
          title: Text(resources.account.profile),
          subtitle: Text(state.userName ?? ''),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: Text(resources.account.settings),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: Text(resources.account.logout),
          onTap: () => viewModel.logout(),
        ),
      ],
    );
  }
}
