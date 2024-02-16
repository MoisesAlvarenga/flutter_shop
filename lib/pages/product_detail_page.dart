import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.title,
        ),
      ),
    );
  }
}
