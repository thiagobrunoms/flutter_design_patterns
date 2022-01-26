import 'package:flutter_design_patterns/design_patterns/adapter/domain/entities/location.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/domain/i_location_management.dart';

class ApplicationService {
  ILocationManagement iLocationManagement;

  ApplicationService(this.iLocationManagement);

  Future<MyLocation?> getUserLocation() async {
    return await iLocationManagement.getLocation();
  }
}
