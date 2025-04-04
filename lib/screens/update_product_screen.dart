import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';

class UpdateProductScreen extends StatelessWidget {
  final TextEditingController priceController = TextEditingController();
  final TextEditingController productIdController = TextEditingController();

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
              controller: priceController,
              decoration: InputDecoration(labelText: 'New Price'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                context.read<ProductProvider>().updateProductPrice(
                  productIdController.text,
                  double.parse(priceController.text),
                );
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Product Updated')));
              },
              child: Text('Update Product'),
            ),
          ],
        ),
      ),
    );
  }
}
