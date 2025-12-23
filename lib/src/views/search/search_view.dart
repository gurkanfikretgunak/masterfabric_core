import 'package:masterfabric_core/src/core.dart';
import 'package:flutter/material.dart';
import 'package:masterfabric_core/src/views/search/cubit/search_cubit.dart';
import 'package:masterfabric_core/src/views/search/cubit/search_state.dart';

/// 🔍 **Search View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Search view for searching content
/// Uses MasterViewCubit for lifecycle management
/// {@category Views}
/// {@subCategory SearchView}

class SearchView extends MasterViewCubit<SearchCubit, SearchState> {
  SearchView({
    required Function(String) goRoute,
    Map<String, dynamic> arguments = const {},
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('🔍 Search View Start!');
    // Initialize search if needed
  }

  @override
  Widget viewContent(BuildContext context, SearchCubit viewModel, SearchState state) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: resources.search.hint,
              border: const OutlineInputBorder(),
            ),
            onChanged: (query) => viewModel.updateQuery(query),
          ),
        ),
        Expanded(
          child: state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : state.results.isEmpty
                  ? Center(child: Text(resources.search.no_results))
                  : ListView.builder(
                      itemCount: state.results.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.results[index].toString()),
                        );
                      },
                    ),
        ),
      ],
    );
  }
}
