import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/gps_position.dart';

class Address implements Comparable<double> {
  final String name;
  final GPSPosition position;
  late double distance;

  Address({required this.name, required this.position});

  @override
  int compareTo(double other) {
    if (distance < other) return -1;

    if (distance > other) return 1;

    return 0;
  }
}
