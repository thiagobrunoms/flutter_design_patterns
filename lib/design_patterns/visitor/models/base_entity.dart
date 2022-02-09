import 'package:flutter_design_patterns/design_patterns/visitor/api/formats/to_remote_service_visitor.dart';

abstract class BaseEntity {
  final int id;

  BaseEntity(this.id);

  String accept(ToRemoteServiceVisitor visitor);

  //implement equals and hash

}
