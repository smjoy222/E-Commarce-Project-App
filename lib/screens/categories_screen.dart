import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Product> products = [
    Product(id: '1', name: 'Fresh Tomato', image: 'assets/product_images/tomato.png', description: 'Fresh and organic tomatoes', price: 48.0),
    Product(id: '2', name: 'Chicken Eggs', image: 'assets/product_images/eggs.png', description: 'Freshly laid chicken eggs', price: 140.0),
    Product(id: '3', name: 'Cow Milk', image: 'assets/product_images/milk.png', description: 'Fresh milk from local cows', price: 90.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}
