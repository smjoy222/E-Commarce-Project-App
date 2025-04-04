import 'package:flutter/material.dart';
import 'update_product_screen.dart';

class AdminHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UpdateProductScreen()),
                );
              },
              child: Text('Update Product'),
            ),
            ElevatedButton(
              onPressed: () {
                // Logic for sign out
              },
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
