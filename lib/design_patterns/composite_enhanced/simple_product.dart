import 'package:flutter_design_patterns/design_patterns/composite_enhanced/base_product.dart';

class SimpleProduct extends BaseProduct {
  double price;
  String name;

  SimpleProduct({required id, required this.price, required this.name})
      : super(id: id);

  @override
  int get totalQuantity => quantity;

  @override
  double getPrice() {
    return price;
  }

  @override
  Map<String, dynamic> toMap() {
    if (observations == null) {
      return {
        'id': super.id,
        'quantity': totalQuantity,
      };
    }

    return {
      'id': super.id,
      'quantity': totalQuantity,
      'observations': observations,
    };
  }
}
