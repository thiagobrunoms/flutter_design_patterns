import 'package:flutter_design_patterns/design_patterns/visitor/api/formats/to_remote_service_visitor.dart';
import 'package:flutter_design_patterns/design_patterns/visitor/models/product_entity.dart';
import 'package:flutter_design_patterns/design_patterns/visitor/models/item_entity.dart';

class GraphQLRemoteService implements ToRemoteServiceVisitor {
  @override
  String processItem(ItemEntity item) {
    return '{@include item: ${item.name}}';
  }

  @override
  String processProduct(ProductEntity product) {
    return '{@exclude product: ${product.name}}';
  }
}
