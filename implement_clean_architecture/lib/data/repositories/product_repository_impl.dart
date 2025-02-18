import 'dart:async';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<Product>> getProducts() async {
    await Future.delayed(Duration(seconds: 2)); 

    return [
      Product(id: 1, name: "Laptop"),
      Product(id: 2, name: "Smartphone"),
      Product(id: 3, name: "Headphones"),
    ];
  }
}
