import 'package:flutter_design_patterns/design_patterns/decorator/entities/ingrediente.dart';

abstract class Product {
  int id;

  Product({required this.id});

  String getDescription();

  double getPrice();
}
