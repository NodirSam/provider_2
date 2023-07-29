import 'package:flutter/material.dart';
import 'package:provider_2/data/models/product_model/product_model.dart';
import 'package:provider_2/ui/description/description_page.dart';

class ProductItem extends StatelessWidget {
  ProductItem({required this.product, Key? key}) : super(key: key);
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DescriptionPage(),));
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: ListTile(
          title: Text(product.title),
          subtitle: Image.network(
            product.image,
            height: 60,
          ),
        ),
      ),
    );
  }
}
