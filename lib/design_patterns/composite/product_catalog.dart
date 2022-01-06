import 'package:flutter_design_patterns/design_patterns/composite/base_product.dart';

class ProductCatalog extends BaseProduct {
  List<BaseProduct> products = [];

  ProductCatalog() : super(id: 0);

  void add(BaseProduct catalog) {
    products.add(catalog);
  }

  bool remove(BaseProduct catalog) {
    if (products.remove(catalog)) return true;

    bool removed = false;
    for (BaseProduct element in products) {
      removed = remove(element);
    }

    return removed;
  }

  @override
  double getPrice() {
    double total = 0;

    for (var product in products) {
      total += product.getPrice();
    }

    return total;
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'products': products.map((e) => e.toMap()).toList(),
    };
  }
}
