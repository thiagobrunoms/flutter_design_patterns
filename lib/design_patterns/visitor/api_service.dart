import 'package:flutter_design_patterns/design_patterns/visitor/api/formats/graphql_remote_service.dart';
import 'package:flutter_design_patterns/design_patterns/visitor/api/formats/json_remote_service.dart';
import 'package:flutter_design_patterns/design_patterns/visitor/models/base_entity.dart';
import 'package:flutter_design_patterns/design_patterns/visitor/models/item_entity.dart';
import 'package:flutter_design_patterns/design_patterns/visitor/models/product_entity.dart';

void main() {
  List<BaseEntity> entities = [
    ItemEntity('Item 1', 1),
    ProductEntity('Product 1', 2),
    ItemEntity('Item 2', 3),
    ProductEntity('Product 2', 4),
    ItemEntity('Item 3', 5),
    ItemEntity('Item 4', 6),
  ];

  entities.forEach((element) {
    print(element.accept(GraphQLRemoteService()));
  });
}
