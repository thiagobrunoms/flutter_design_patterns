import 'package:flutter_design_patterns/design_patterns/adapter/domain/i_location_management.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/domain/entities/location.dart';
import 'package:location/location.dart';

class GoogleLocationManagerAdapter implements ILocationManagement {
  Location? googleLocation;

  GoogleLocationManagerAdapter() {
    googleLocation = Location.instance;
  }

  @override
  Future<MyLocation> getLocation() async {
    LocationData? locationData = await googleLocation?.getLocation();

    return MyLocation.fromMap({
      'latitude': locationData?.latitude,
      'longitude': locationData?.longitude
    });
  }
}
