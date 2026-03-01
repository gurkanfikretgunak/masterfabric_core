import '../../context/template_context.dart';

/// Templates for the profile feature: view, cubit, state.
class ProfileTemplates {
  ProfileTemplates._();

  static String state(TemplateContext ctx) => '''
import 'package:equatable/equatable.dart';

enum ProfileStatus { initial, loading, success, error }

class ProfileState extends Equatable {
  final ProfileStatus status;
  final String? errorMessage;

  const ProfileState({
    this.status = ProfileStatus.initial,
    this.errorMessage,
  });

  ProfileState copyWith({
    ProfileStatus? status,
    String? errorMessage,
  }) {
    return ProfileState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, errorMessage];
}
''';

  static String cubit(TemplateContext ctx) => '''
import 'package:injectable/injectable.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

import 'profile_state.dart';

@injectable
class ProfileCubit extends BaseViewModelCubit<ProfileState> {
  ProfileCubit() : super(const ProfileState());

  Future<void> loadProfile() async {
    stateChanger(state.copyWith(status: ProfileStatus.loading));
    try {
      await Future<void>.delayed(const Duration(milliseconds: 300));
      stateChanger(state.copyWith(status: ProfileStatus.success));
    } catch (e) {
      stateChanger(state.copyWith(
        status: ProfileStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}
''';

  static String view(TemplateContext ctx) => '''
import 'package:flutter/material.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

import 'cubit/profile_cubit.dart';
import 'cubit/profile_state.dart';

class ProfileView extends MasterViewCubit<ProfileCubit, ProfileState> {
  ProfileView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          useSafeArea: true,
          horizontalPadding: const PaddingVisibility.enabled(),
        );

  @override
  Future<void> initialContent(
    ProfileCubit viewModel,
    BuildContext context,
  ) async {
    await viewModel.loadProfile();
  }

  @override
  Widget viewContent(
    BuildContext context,
    ProfileCubit viewModel,
    ProfileState state,
  ) {
    if (state.status == ProfileStatus.loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.status == ProfileStatus.error) {
      return Center(child: Text('Error: \${state.errorMessage}'));
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 48,
            child: Icon(Icons.person, size: 48),
          ),
          const SizedBox(height: 16),
          Text(
            'Profile',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
''';
}
