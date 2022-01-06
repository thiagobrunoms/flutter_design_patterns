import 'package:flutter_design_patterns/design_patterns/adapter/domain/entities/location.dart';

abstract class ILocationManagement {
  Future<MyLocation> getLocation();
}
