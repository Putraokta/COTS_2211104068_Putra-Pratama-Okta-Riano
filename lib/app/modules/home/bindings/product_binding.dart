import 'package:get/get.dart';
import '../../../data/providers/product_provider.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductProvider());
  }
}
