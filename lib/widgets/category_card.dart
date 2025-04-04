import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle category click
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(category.image),
            Text(category.name),
          ],
        ),
      ),
    );
  }
}
