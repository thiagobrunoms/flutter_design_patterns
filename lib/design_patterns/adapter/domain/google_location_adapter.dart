import 'package:flutter_design_patterns/design_patterns/adapter/domain/entities/location.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/domain/i_location_management.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/domain/other_location_management.dart';
import 'package:location/location.dart';

class GoogleLocationAdapter implements ILocationManagement {
  OtherLocationManagement otherLocationManagement;

  GoogleLocationAdapter(this.otherLocationManagement);

  @override
  Future<MyLocation> getLocation() async {
    LocationData? locationData = await otherLocationManagement.getLocation();

    return MyLocation.fromMap({
      'latitude': locationData.latitude,
      'longitude': locationData.longitude
    });
  }
}
