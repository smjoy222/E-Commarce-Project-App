import 'package:flutter/material.dart';
import '../models/category.dart';
import '../widgets/category_card.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Category> categories = [
    Category(name: 'Fruits', image: 'assets/images/cate-1.jpg'),
    Category(name: 'Vegetables', image: 'assets/images/cate-2.jpg'),
    Category(name: 'Meats', image: 'assets/images/cate-3.jpg'),
    Category(name: 'Dairy', image: 'assets/images/cate-4.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
