import 'package:flutter_design_patterns/design_patterns/decorator/entities/product.dart';

abstract class Ingredient extends Product {
  int ingredientId;
  Product product;

  Ingredient({required this.product, required this.ingredientId})
      : super(id: product.id);

  void remove(Ingredient ingredient) {
    if (product == ingredient) {
      product = ingredient.product;
    } else {
      remove(ingredient);
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ingredient &&
          runtimeType == other.runtimeType &&
          product.id == other.id;

  @override
  int get hashCode => product.id;
}
