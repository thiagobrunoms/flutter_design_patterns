import 'package:location/location.dart';

abstract class OtherLocationManagement {
  Future<LocationData> getLocation();
}
