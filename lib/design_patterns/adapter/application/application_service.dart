import 'package:flutter_design_patterns/design_patterns/adapter/domain/entities/location.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/domain/google_location_management_adapter.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/domain/location_service.dart';
import 'package:location/location.dart';

class ApplicationService {
  LocationService? locationService;

  ApplicationService() {
    locationService = LocationService();
  }

  Future<MyLocation?> getLocation() async {
    Location googleLocation = Location.instance;
    googleLocation.getLocation();

    GoogleLocationManagerAdapter locationManager =
        GoogleLocationManagerAdapter();

    return await locationService?.getLocation(locationManager);
  }
}
