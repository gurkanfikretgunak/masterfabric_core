import '../../context/template_context.dart';

/// Templates for the home feature: view, cubit, state.
class HomeTemplates {
  HomeTemplates._();

  static String state(TemplateContext ctx) => '''
import 'package:equatable/equatable.dart';

enum HomeStatus { initial, loading, success, error }

class HomeState extends Equatable {
  final HomeStatus status;
  final String? errorMessage;

  const HomeState({
    this.status = HomeStatus.initial,
    this.errorMessage,
  });

  HomeState copyWith({
    HomeStatus? status,
    String? errorMessage,
  }) {
    return HomeState(
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

import 'home_state.dart';

@injectable
class HomeCubit extends BaseViewModelCubit<HomeState> {
  HomeCubit() : super(const HomeState());

  Future<void> loadData() async {
    stateChanger(state.copyWith(status: HomeStatus.loading));
    try {
      await Future<void>.delayed(const Duration(milliseconds: 300));
      stateChanger(state.copyWith(status: HomeStatus.success));
    } catch (e) {
      stateChanger(state.copyWith(
        status: HomeStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}
''';

  static String view(TemplateContext ctx) => '''
import 'package:flutter/material.dart';
import 'package:masterfabric_core/masterfabric_core.dart';

import 'cubit/home_cubit.dart';
import 'cubit/home_state.dart';

class HomeView extends MasterViewCubit<HomeCubit, HomeState> {
  HomeView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          useSafeArea: true,
          horizontalPadding: const PaddingVisibility.enabled(),
        );

  @override
  Future<void> initialContent(HomeCubit viewModel, BuildContext context) async {
    await viewModel.loadData();
  }

  @override
  Widget viewContent(
    BuildContext context,
    HomeCubit viewModel,
    HomeState state,
  ) {
    if (state.status == HomeStatus.loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.status == HomeStatus.error) {
      return Center(child: Text('Error: \${state.errorMessage}'));
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to ${ctx.projectNamePascal}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          Text(
            'Built with MasterFabric Core',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
''';
}
