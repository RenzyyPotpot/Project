import 'models/sales.dart';

class SalesHistory {
  static final List<Sale> _sales = [];

  static void addSale(Sale sale) {
    _sales.add(sale);
  }

  static List<Sale> getSales() {
    return List.unmodifiable(_sales);
  }
}
