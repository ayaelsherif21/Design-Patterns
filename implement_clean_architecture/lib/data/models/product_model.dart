import '../../domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel({required super.id, required super.name});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(id: json['id'], name: json['name']);
  }
}
