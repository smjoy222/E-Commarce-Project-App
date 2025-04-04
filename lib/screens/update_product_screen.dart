import 'package:flutter/material.dart';

class UpdateProductScreen extends StatefulWidget {
  @override
  _UpdateProductScreenState createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  final TextEditingController productIdController = TextEditingController();
  final TextEditingController newPriceController = TextEditingController();
  String? errorMessage;

  // Simulate in-memory product list
  List<Map<String, dynamic>> products = [
    {'id': '1', 'name': 'Tomato', 'price': 50.0},
    {'id': '2', 'name': 'Eggs', 'price': 120.0},
    {'id': '3', 'name': 'Milk', 'price': 90.0},
  ];

  void updateProductPrice() {
    final productId = productIdController.text;
    final newPrice = double.tryParse(newPriceController.text);

    if (newPrice != null) {
      final productIndex = products.indexWhere((prod) => prod['id'] == productId);
      if (productIndex != -1) {
        setState(() {
          products[productIndex]['price'] = newPrice;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Product updated successfully')));
      } else {
        setState(() {
          errorMessage = 'Product not found';
        });
      }
    } else {
      setState(() {
        errorMessage = 'Invalid price';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update Product')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: productIdController,
              decoration: InputDecoration(labelText: 'Product ID'),
            ),
            TextField(
              controller: newPriceController,
              decoration: InputDecoration(labelText: 'New Price'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: updateProductPrice,
              child: Text('Update Product'),
            ),
            if (errorMessage != null) ...[
              SizedBox(height: 10),
              Text(
                errorMessage!,
                style: TextStyle(color: Colors.red),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
