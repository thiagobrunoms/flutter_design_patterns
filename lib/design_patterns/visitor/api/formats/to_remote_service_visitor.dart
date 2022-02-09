import 'package:flutter_design_patterns/design_patterns/visitor/models/item_entity.dart';
import 'package:flutter_design_patterns/design_patterns/visitor/models/product_entity.dart';

abstract class ToRemoteServiceVisitor {
  String processProduct(ProductEntity product);
  String processItem(ItemEntity item);
}
