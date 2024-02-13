import 'package:flutter/material.dart';
import 'package:flutter_shop/components/product_item.dart';
import 'package:flutter_shop/data/dummy_data.dart';
import 'package:flutter_shop/models/product.dart';

class ProductsOverViewPage extends StatelessWidget {
  final List<Product> loaderProducts = dummyProducts;
  ProductsOverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Minha loja',
          style: TextStyle(),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loaderProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (ctx, i) => ProductItem(
          product: loaderProducts[i],
        ),
      ),
    );
  }
}
