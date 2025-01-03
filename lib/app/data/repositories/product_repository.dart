import '../models/product_model.dart';

class ProductRepository {
  // Fungsi untuk mendapatkan produk
  Future<List<ProductModel>> getProducts() async {
    // Simulasi pengambilan data produk dari API atau sumber lain
    await Future.delayed(Duration(seconds: 2)); // Simulasi delay
    return [
      ProductModel(
        id: '1',
        name: 'Product 1',
        description: 'Description for Product 1',
        price: 199.99,
        imageUrl: 'https://example.com/product1.jpg',
      ),
      ProductModel(
        id: '2',
        name: 'Product 2',
        description: 'Description for Product 2',
        price: 299.99,
        imageUrl: 'https://example.com/product2.jpg',
      ),
      // Tambahkan lebih banyak produk di sini
    ];
  }
}
