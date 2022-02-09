import 'package:flutter_design_patterns/design_patterns/visitor/api/formats/to_remote_service_visitor.dart';
import 'package:flutter_design_patterns/design_patterns/visitor/models/product_entity.dart';
import 'package:flutter_design_patterns/design_patterns/visitor/models/item_entity.dart';

class JsonRemoteService implements ToRemoteServiceVisitor {
  @override
  String processItem(ItemEntity item) {
    return '{item: ${item.name}}';
  }

  @override
  String processProduct(ProductEntity product) {
    return '{product: ${product.name}}';
  }
}
