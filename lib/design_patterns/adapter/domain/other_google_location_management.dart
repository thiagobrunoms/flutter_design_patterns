import 'package:flutter_design_patterns/design_patterns/adapter/domain/other_location_management.dart';
import 'package:location/location.dart';
import 'package:location_platform_interface/location_platform_interface.dart';

class OtherGoogleLocationManagement implements OtherLocationManagement {
  late Location googleLocation;

  OtherGoogleLocationManagement() {
    googleLocation = Location.instance;
  }

  @override
  Future<LocationData> getLocation() async {
    return await googleLocation.getLocation();
  }
}
