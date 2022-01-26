import 'package:flutter_design_patterns/design_patterns/adapter/domain/entities/location.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/domain/i_location_management.dart';

class MyLocationManagement implements ILocationManagement {
  @override
  Future<MyLocation> getLocation() async {
    //remote connection
    return MyLocation(latitude: 32.123, longitude: 9.123);
  }
}
