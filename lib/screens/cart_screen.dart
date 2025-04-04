import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // Simulated in-memory cart items
  List<Map<String, dynamic>> cartItems = [];
  
  // Simulate adding a product to the cart
  void addToCart(Map<String, dynamic> product) {
    setState(() {
      cartItems.add(product);
    });
  }

  // Simulate removing a product from the cart
  void removeFromCart(Map<String, dynamic> product) {
    setState(() {
      cartItems.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: cartItems.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index]['name']),
                  subtitle: Text('৳ ${cartItems[index]['price']}'),
                  trailing: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      removeFromCart(cartItems[index]);
                    },
                  ),
                );
              },
            ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total: ৳ ${cartItems.fold(0, (sum, item) => sum + (item['price'] as int))}'),
              ElevatedButton(
                onPressed: () {},
                child: Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
