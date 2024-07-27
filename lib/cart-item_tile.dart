import 'package:flutter/material.dart';
import 'package:form_validation/models/item.dart';

class CartItemTile extends StatelessWidget {
  final Item item;
  final VoidCallback onRemove;

  const CartItemTile({super.key, required this.item, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name),
      subtitle: Text('₱${item.price.toStringAsFixed(2)}'),
      trailing: IconButton(
        icon: const Icon(Icons.remove_circle),
        onPressed: onRemove,
      ),
    );
  }
}
