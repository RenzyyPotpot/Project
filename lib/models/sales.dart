import 'item.dart';

class Sale {
  final List<Item> items;
  final double total;
  final DateTime dateTime;

  Sale({required this.items, required this.total, required this.dateTime});
}
