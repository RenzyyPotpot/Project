import 'package:flutter/material.dart';
import 'models/item.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  final Function(Item) addToCart;

  const ItemTile({super.key, required this.item, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name, style: const TextStyle(fontSize: 18)),
      trailing: Text('₱${item.price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 16)),
      onTap: () {
        addToCart(item);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${item.name} added to cart'),
            duration: const Duration(seconds: 1),
          ),
        );
      },
    );
  }
}
