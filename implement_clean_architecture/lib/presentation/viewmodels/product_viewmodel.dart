import 'package:flutter/material.dart';
import '../../domain/use_cases/fetch_products_use_case.dart';
import '../../domain/entities/product.dart';

class ProductViewModel extends ChangeNotifier {
  final FetchProductsUseCase fetchProductsUseCase;

  ProductViewModel(this.fetchProductsUseCase);

  List<Product> _products = [];
  bool _isLoading = false;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  Future<void> fetchProducts() async {
    _isLoading = true;
    notifyListeners();

    _products = await fetchProductsUseCase();
    _isLoading = false;
    notifyListeners();
  }
}
