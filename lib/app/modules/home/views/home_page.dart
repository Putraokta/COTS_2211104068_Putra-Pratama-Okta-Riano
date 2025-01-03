import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/providers/product_provider.dart';
import '/design_system/colors/primary_colors.dart';
import '/design_system/typography/text_styles.dart';
import '/design_system/icons/app_icons.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil controller untuk provider produk
    final productProvider = Get.find<ProductProvider>();

    // Memuat produk saat halaman dibuka
    productProvider.fetchProducts();

    return Scaffold(
      appBar: AppBar(
        title: Text('Products', style: TextStyles.headline1),
        backgroundColor: PrimaryColors.primary,
      ),
      body: Obx(() {
        if (productProvider.products.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: productProvider.products.length,
          itemBuilder: (context, index) {
            final product = productProvider.products[index];
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Image.network(product.imageUrl),
                title: Text(product.name, style: TextStyles.headline2),
                subtitle: Text(product.description, style: TextStyles.bodyText2),
                trailing: Text('\$${product.price}', style: TextStyles.bodyText1),
                onTap: () {
                  // Navigasi ke halaman detail produk
                },
              ),
            );
          },
        );
      }),
    );
  }
}
