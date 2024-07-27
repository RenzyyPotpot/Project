import 'package:flutter/material.dart';
import 'package:form_validation/models/category.dart';
import 'package:form_validation/models/item.dart';
import 'cart_screen.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Category> categories = [
    Category(
      name: 'Meat',
      items: [
        Item(name: 'Pork Belly', price: 200.0),
        Item(name: 'Beef Brisket', price: 250.0),
        Item(name: 'Chicken Thighs', price: 150.0),
      ],
    ),
    Category(
      name: 'Sides',
      items: [
        Item(name: 'Kimchi', price: 50.0),
        Item(name: 'Rice', price: 30.0),
        Item(name: 'Lettuce', price: 20.0),
      ],
    ),
    Category(
      name: 'Drinks',
      items: [
        Item(name: 'Soda', price: 40.0),
        Item(name: 'Water', price: 20.0),
        Item(name: 'Beer', price: 100.0),
      ],
    ),
  ];

  final List<Item> cart = [];

  void _addToCart(Item item) {
    setState(() {
      cart.add(item);
    });
  }

  void _viewCart() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartScreen(cart: cart),
      ),
    );
  }

  void _logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  double _calculateTotal() {
    return cart.fold(0, (sum, item) => sum + item.price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samgyupsal Ordering System'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: _viewCart,
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    title: Text(
                      category.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    children: category.items.map((item) {
                      return ListTile(
                        title: Text(item.name),
                        subtitle: Text('₱${item.price.toStringAsFixed(2)}'),
                        trailing: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                          ),
                          onPressed: () => _addToCart(item),
                          child: const Text('Add to Cart'),
                        ),
                      );
                    }).toList(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '₱${_calculateTotal().toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
