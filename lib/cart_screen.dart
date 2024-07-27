import 'package:flutter/material.dart';
import 'package:form_validation/models/item.dart';
import 'package:form_validation/models/sales.dart';
import 'package:form_validation/sales_history.dart';
import 'cart-item_tile.dart';
import 'receipt_screen.dart';

class CartScreen extends StatefulWidget {
  final List<Item> cart;

  const CartScreen({super.key, required this.cart});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void _removeFromCart(Item item) {
    setState(() {
      widget.cart.remove(item);
    });
  }

  void _checkout() {
    final double total = widget.cart.fold(0.0, (sum, item) => sum + item.price);
    final Sale sale = Sale(items: widget.cart, total: total, dateTime: DateTime.now());

    // Add sale to history
    SalesHistory.addSale(sale);

    // Navigate to ReceiptScreen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ReceiptScreen(cart: widget.cart, total: total),
      ),
    ).then((_) {
      setState(() {
        widget.cart.clear(); // Clear the cart after checkout
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double total = widget.cart.fold(0.0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.length,
              itemBuilder: (context, index) {
                return CartItemTile(
                  item: widget.cart[index],
                  onRemove: () => _removeFromCart(widget.cart[index]),
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
                  'Total',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '₱${total.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text('Checkout'),
              onPressed: _checkout,
            ),
          ),
        ],
      ),
    );
  }
}
