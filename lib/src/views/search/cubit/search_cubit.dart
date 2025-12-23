import 'package:masterfabric_core/src/base/base_view_model_cubit.dart';
import 'package:masterfabric_core/src/views/search/cubit/search_state.dart';
import 'package:injectable/injectable.dart';

/// 🔍 **Search Cubit**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Cubit that manages search operations with MVVM pattern
///
/// {@category ViewModels}
/// {@subCategory SearchCubit}

@injectable
class SearchCubit extends BaseViewModelCubit<SearchState> {
  SearchCubit() : super(const SearchState());

  void updateQuery(String query) {
    stateChanger(state.copyWith(query: query));
    if (query.isNotEmpty) {
      performSearch(query);
    } else {
      stateChanger(state.copyWith(results: []));
    }
  }

  Future<void> performSearch(String query) async {
    stateChanger(state.copyWith(isLoading: true, errorMessage: null));
    // TODO: Implement actual search logic
    await Future.delayed(const Duration(seconds: 1));
    stateChanger(state.copyWith(
      isLoading: false,
      results: [],
    ));
  }
}
