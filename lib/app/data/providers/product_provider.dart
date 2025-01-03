import 'package:get/get.dart';
import '../models/product_model.dart';
import '../repositories/product_repository.dart';

class ProductProvider extends GetxController {
  var products = <ProductModel>[].obs;

  // Fungsi untuk memuat data produk
  void fetchProducts() async {
    var result = await ProductRepository().getProducts();
    if (result.isNotEmpty) {
      products.value = result;
    }
  }
}
