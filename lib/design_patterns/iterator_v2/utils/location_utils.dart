import 'dart:math' as math;

class LocationUtils {
  double checkDistance(double lat1, double lon1, double lat2, double lon2) {
    var earthRadiusKm = 6371;

    var dLat = degreesToRadians(lat2 - lat1);
    var dLon = degreesToRadians(lon2 - lon1);

    lat1 = degreesToRadians(lat1);
    lat2 = degreesToRadians(lat2);

    var a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.sin(dLon / 2) *
            math.sin(dLon / 2) *
            math.cos(lat1) *
            math.cos(lat2);
    var c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    double distance = (earthRadiusKm * c) * 1000;
    return distance; //in meters
  }

  double degreesToRadians(degrees) {
    return degrees * math.pi / 180;
  }
}
