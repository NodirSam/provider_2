import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_2/data/models/product_model/product_model.dart';
import 'package:provider_2/ui/products/widgets/product_item.dart';
import 'package:provider_2/view_model/products_view_model.dart';

class Productspage extends StatelessWidget {
  const Productspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myProvider = context.read<ProductsViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products Page"),
      ),
      body: Consumer<ProductsViewModel>(
        builder: (context, myProvider, child) {
          if (myProvider.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (myProvider.products.isNotEmpty) {
            return ListView.builder(
              itemCount: myProvider.products.length,
              itemBuilder: (context, index) => ProductItem(product: myProvider.products[index]),
            );
          }
          else {
            return const Text("Data yoq");
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ProductsViewModel>().getAllProducts();
        },
      ),
    );
  }
}
