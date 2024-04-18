import 'package:ecommerce_app_c10_frida/domain/entities/Product.dart';
import 'package:ecommerce_app_c10_frida/domain/repository/product_repository.dart';

class GetProductsUseCase{
  ProductRepository productRepository;
  GetProductsUseCase({required this.productRepository});
  Future<List<Product>?> invoke(){
    return productRepository.getProducts();
  }
}