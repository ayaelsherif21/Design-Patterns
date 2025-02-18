import 'package:get_it/get_it.dart';
import 'data/repositories/product_repository_impl.dart';
import 'domain/repositories/product_repository.dart';
import 'domain/use_cases/fetch_products_use_case.dart';
import 'presentation/viewmodels/product_viewmodel.dart';

final sl = GetIt.instance;

void setupLocator() {
  // Register repository
  sl.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl());

  // Register use case
  sl.registerLazySingleton(() => FetchProductsUseCase(sl()));

  // Register ViewModel
  sl.registerFactory(() => ProductViewModel(sl()));
}
