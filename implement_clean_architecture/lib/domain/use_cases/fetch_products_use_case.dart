import '../repositories/product_repository.dart';
import '../entities/product.dart';

class FetchProductsUseCase {
  final ProductRepository repository;

  FetchProductsUseCase(this.repository);

  Future<List<Product>> call() async {
    return await repository.getProducts();
  }
}
