import 'package:flutter_design_patterns/design_patterns/composite_enhanced/base_product.dart';

class ProductCatalog extends BaseProduct {
  ProductCatalog() : super(id: 0);

  void add(BaseProduct baseProduct) {
    bool exists = true;

    BaseProduct found = products
        .firstWhere((element) => baseProduct.id == element.id, orElse: () {
      exists = false;
      return baseProduct;
    });

    found.quantity++;
    if (!exists) {
      products.add(found);
    }
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
      total += product.getPrice() * product.quantity;
    }

    return total;
  }

  @override
  Map<String, dynamic> toMap() {
    if (observations == null) {
      return {
        'products': products.map((e) => e.toMap()).toList(),
        'quantity': totalQuantity
      };
    }

    return {
      'products': products.map((e) => e.toMap()).toList(),
      'observations': observations,
      'quantity': totalQuantity
    };
  }
}
