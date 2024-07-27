import 'package:flutter/material.dart';
import 'package:form_validation/models/item.dart';
import 'item_tile.dart';
import 'models/category.dart';

class CategoryTile extends StatelessWidget {
  final Category category;
  final Function(Item) addToCart;

  const CategoryTile({super.key, required this.category, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ExpansionTile(
        title: Text(
          category.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        children: category.items.map((item) {
          return ItemTile(
            item: item,
            addToCart: addToCart,
          );
        }).toList(),
      ),
    );
  }
}
