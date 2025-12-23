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
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // Navigate to search or show search dialog
                  },
                  tooltip: 'Search',
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

        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: state.products.length,
          itemBuilder: (context, index) {
            final product = state.products[index];
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
      },
    );
  }
}

