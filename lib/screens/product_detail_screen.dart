import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          Image.asset(product.image),
          Text(product.name),
          Text(product.description),
          Text('Price: ৳ ${product.price}'),
          ElevatedButton(
            onPressed: () {
              // Add product to cart
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
