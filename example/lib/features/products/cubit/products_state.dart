import 'package:equatable/equatable.dart';
import 'package:masterfabric_core_example/features/products/models/product.dart';

/// Products State
class ProductsState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final String? errorMessage;
  final List<Product> products;
  final List<Product> filteredProducts;
  final String searchQuery;
  final bool isSearchActive;

  const ProductsState({
    required this.isLoading,
    required this.hasError,
    this.errorMessage,
    required this.products,
    required this.filteredProducts,
    this.searchQuery = '',
    this.isSearchActive = false,
  });

  const ProductsState.initial()
      : isLoading = false,
        hasError = false,
        errorMessage = null,
        products = const [],
        filteredProducts = const [],
        searchQuery = '',
        isSearchActive = false;

  const ProductsState.loading()
      : isLoading = true,
        hasError = false,
        errorMessage = null,
        products = const [],
        filteredProducts = const [],
        searchQuery = '',
        isSearchActive = false;

  const ProductsState.loaded({required this.products})
      : isLoading = false,
        hasError = false,
        errorMessage = null,
        filteredProducts = products,
        searchQuery = '',
        isSearchActive = false;

  const ProductsState.error({required this.errorMessage})
      : isLoading = false,
        hasError = true,
        products = const [],
        filteredProducts = const [],
        searchQuery = '',
        isSearchActive = false;

  ProductsState copyWith({
    bool? isLoading,
    bool? hasError,
    String? errorMessage,
    List<Product>? products,
    List<Product>? filteredProducts,
    String? searchQuery,
    bool? isSearchActive,
  }) {
    return ProductsState(
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      errorMessage: errorMessage ?? this.errorMessage,
      products: products ?? this.products,
      filteredProducts: filteredProducts ?? this.filteredProducts,
      searchQuery: searchQuery ?? this.searchQuery,
      isSearchActive: isSearchActive ?? this.isSearchActive,
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
        hasError,
        errorMessage,
        products,
        filteredProducts,
        searchQuery,
        isSearchActive,
      ];
}

