import 'package:flutter_design_patterns/design_patterns/iterator_v2/iterators/my_iterator.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/address.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/delivery.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/gps_position.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/purchase.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/utils/location_utils.dart';

class ClosestDistanceIterator implements MyIterator<Purchase> {
  final Delivery delivery;
  List<Purchase> elements = [];

  ClosestDistanceIterator(this.delivery) {
    _buildClosestDistanceIteraction();
  }

  void _buildClosestDistanceIteraction() {
    _calculateDistance();
    delivery.purchasesToDeliver.sort(Purchase.distanceComparator);
    elements.addAll(delivery.purchasesToDeliver);
  }

  void _calculateDistance() {
    GPSPosition storePosition = delivery.store.address.position;
    for (Purchase purchase in delivery.purchasesToDeliver) {
      double distance = LocationUtils().checkDistance(
          storePosition.latitude,
          storePosition.longitude,
          purchase.address.position.latitude,
          purchase.address.position.longitude);

      purchase.address.distance = distance;
    }
  }

  @override
  Purchase getNext() {
    return elements.removeAt(0);
  }

  @override
  bool hasNext() {
    return elements.isNotEmpty;
  }

  @override
  void reset() {
    elements = [];
    _buildClosestDistanceIteraction();
  }
}
