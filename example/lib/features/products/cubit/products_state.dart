import 'package:equatable/equatable.dart';
import 'package:masterfabric_core_example/features/products/models/product.dart';

/// Products State
class ProductsState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final String? errorMessage;
  final List<Product> products;

  const ProductsState({
    required this.isLoading,
    required this.hasError,
    this.errorMessage,
    required this.products,
  });

  const ProductsState.initial()
      : isLoading = false,
        hasError = false,
        errorMessage = null,
        products = const [];

  const ProductsState.loading()
      : isLoading = true,
        hasError = false,
        errorMessage = null,
        products = const [];

  const ProductsState.loaded({required this.products})
      : isLoading = false,
        hasError = false,
        errorMessage = null;

  const ProductsState.error({required this.errorMessage})
      : isLoading = false,
        hasError = true,
        products = const [];

  @override
  List<Object?> get props => [isLoading, hasError, errorMessage, products];
}

