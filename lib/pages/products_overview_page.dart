import 'package:flutter/material.dart';
import 'package:flutter_shop/data/dummy_data.dart';
import 'package:flutter_shop/models/product.dart';

class ProductsOverViewPage extends StatelessWidget {
  final List<Product> loaderProducts = dummyProducts;
  ProductsOverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Minha loja',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: loaderProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (ctx, i) => Text(loaderProducts[i].title),
        ),
      ),
    );
  }
}
