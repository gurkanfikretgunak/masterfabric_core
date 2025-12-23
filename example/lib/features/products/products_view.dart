import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/products/cubit/products_cubit.dart';
import 'package:masterfabric_core_example/features/products/cubit/products_state.dart';

/// Products View - Example of using MasterViewCubit with list data
class ProductsView extends MasterViewCubit<ProductsCubit, ProductsState> {
  ProductsView({
    super.key,
    required Function(String) goRoute,
  }) : super(
          currentView: MasterViewCubitTypes.content,
          goRoute: goRoute,
          coreAppBar: (context, viewModel) {
            final canPop = GoRouter.of(context).canPop();
            return AppBar(
              title: const Text('Products'),
              leading: canPop
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => GoRouter.of(context).pop(),
                      tooltip: 'Back',
                    )
                  : null,
              actions: [
                BlocBuilder<ProductsCubit, ProductsState>(
                  bloc: viewModel,
                  builder: (context, state) {
                    return IconButton(
                      icon: Icon(state.isSearchActive ? Icons.close : Icons.search),
                      onPressed: () => viewModel.toggleSearch(),
                      tooltip: state.isSearchActive ? 'Close Search' : 'Search',
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () => viewModel.loadProducts(),
                  tooltip: 'Refresh',
                ),
              ],
            );
          },
        );

  @override
  Future<void> initialContent(ProductsCubit viewModel, BuildContext context) async {
    await viewModel.loadProducts();
  }

  @override
  Widget viewContent(BuildContext context, ProductsCubit viewModel, ProductsState state) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      bloc: viewModel,
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.hasError) {
          return ErrorHandlingView(
            goRoute: super.goRoute,
            initialError: ErrorModel(
              message: state.errorMessage ?? 'Unknown error',
              code: 'PRODUCTS_ERROR',
            ),
          );
        }

        // Show search bar if search is active
        if (state.isSearchActive) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Search products...',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: state.searchQuery.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () => viewModel.clearSearch(),
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onChanged: (value) => viewModel.searchProducts(value),
                ),
              ),
              Expanded(
                child: _buildProductsList(context, viewModel, state),
              ),
            ],
          );
        }

        return _buildProductsList(context, viewModel, state);
      },
    );
  }

  Widget _buildProductsList(
    BuildContext context,
    ProductsCubit viewModel,
    ProductsState state,
  ) {
    final productsToShow = state.isSearchActive ? state.filteredProducts : state.products;

    if (state.products.isEmpty) {
      return EmptyView(
        goRoute: super.goRoute,
        emptyViewModel: EmptyViewModel(
          title: 'No Products',
          description: 'No products available at the moment.',
          actionLabel: 'Retry',
          onAction: () => viewModel.loadProducts(),
        ),
      );
    }

    if (state.isSearchActive && state.filteredProducts.isEmpty && state.searchQuery.isNotEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.search_off, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            Text(
              'No products found',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Try a different search term',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: productsToShow.length,
      itemBuilder: (context, index) {
        final product = productsToShow[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12.0),
          child: ListTile(
            leading: CircleAvatar(
              child: Text(product.name[0].toUpperCase()),
            ),
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to product detail
            },
          ),
        );
      },
    );
  }
}

