import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/products/cubit/products_state.dart';
import 'package:masterfabric_core_example/features/products/models/product.dart';

/// Products Cubit
class ProductsCubit extends BaseViewModelCubit<ProductsState> {
  ProductsCubit() : super(const ProductsState.initial());

  /// Load products
  Future<void> loadProducts() async {
    stateChanger(const ProductsState.loading());

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      // Example products
      final products = [
        const Product(id: '1', name: 'Product A', price: 29.99),
        const Product(id: '2', name: 'Product B', price: 39.99),
        const Product(id: '3', name: 'Product C', price: 49.99),
        const Product(id: '4', name: 'Product D', price: 59.99),
        const Product(id: '5', name: 'Product E', price: 69.99),
        const Product(id: '6', name: 'Product F', price: 79.99),
      ];

      stateChanger(ProductsState.loaded(products: products));
    } catch (e) {
      stateChanger(ProductsState.error(errorMessage: e.toString()));
    }
  }

  /// Search products
  void searchProducts(String query) {
    if (query.isEmpty) {
      stateChanger(state.copyWith(
        searchQuery: '',
        filteredProducts: state.products,
        isSearchActive: false,
      ));
      return;
    }

    final filtered = state.products.where((product) {
      return product.name.toLowerCase().contains(query.toLowerCase()) ||
          product.id.toLowerCase().contains(query.toLowerCase());
    }).toList();

    stateChanger(state.copyWith(
      searchQuery: query,
      filteredProducts: filtered,
      isSearchActive: true,
    ));
  }

  /// Clear search
  void clearSearch() {
    stateChanger(state.copyWith(
      searchQuery: '',
      filteredProducts: state.products,
      isSearchActive: false,
    ));
  }

  /// Toggle search active state
  void toggleSearch() {
    stateChanger(state.copyWith(
      isSearchActive: !state.isSearchActive,
      searchQuery: state.isSearchActive ? '' : state.searchQuery,
      filteredProducts: state.isSearchActive ? state.products : state.filteredProducts,
    ));
  }
}

