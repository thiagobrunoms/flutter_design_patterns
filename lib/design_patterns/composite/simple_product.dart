import 'package:flutter_design_patterns/design_patterns/composite/base_product.dart';

class SimpleProduct extends BaseProduct {
  double price;
  String name;

  SimpleProduct({required id, required this.price, required this.name})
      : super(id: id);

  @override
  Map<String, dynamic> toMap() {
    return {'id': super.id};
  }

  @override
  double getPrice() {
    return price;
  }
}
