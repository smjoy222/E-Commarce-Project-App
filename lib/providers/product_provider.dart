import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String image;
  final String description;
  double price;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });
}

class ProductProvider extends ChangeNotifier {
  List<Product> _products = [
    Product(
      id: '1',
      name: 'Fresh Tomato',
      image: 'assets/product_images/tomato.png',
      description: 'Fresh and organic tomatoes',
      price: 48.0,
    ),
    Product(
      id: '2',
      name: 'Chicken Eggs',
      image: 'assets/product_images/eggs.png',
      description: 'Freshly laid chicken eggs',
      price: 140.0,
    ),
    Product(
      id: '3',
      name: 'Cow Milk',
      image: 'assets/product_images/milk.png',
      description: 'Fresh milk from local cows',
      price: 90.0,
    ),
    // Add more products here...
  ];

  List<Product> get products => _products;

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void updateProductPrice(String productId, double newPrice) {
    final product = _products.firstWhere((prod) => prod.id == productId);
    product.price = newPrice;
    notifyListeners();
  }
}
