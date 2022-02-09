import 'package:flutter_design_patterns/design_patterns/visitor/api/formats/to_remote_service_visitor.dart';
import 'package:flutter_design_patterns/design_patterns/visitor/models/base_entity.dart';

class ItemEntity extends BaseEntity {
  String name;

  ItemEntity(this.name, int id) : super(id);

  @override
  String accept(ToRemoteServiceVisitor visitor) {
    return visitor.processItem(this);
  }
}
