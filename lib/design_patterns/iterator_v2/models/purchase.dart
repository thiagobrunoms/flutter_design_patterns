import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/address.dart';

class Purchase implements Comparable<Purchase> {
  final Address address;
  final DateTime date;

  Purchase({required this.address, required this.date});

  static Comparator<Purchase> distanceComparator =
      (a, b) => a.address.distance.compareTo(b.address.distance);

  @override
  int compareTo(Purchase other) {
    if (date.isBefore(other.date)) return -1;

    if (date.isAfter(other.date)) return 1;

    return 0;
  }
}
