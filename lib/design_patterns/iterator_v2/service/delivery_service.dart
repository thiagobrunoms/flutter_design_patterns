import 'package:flutter_design_patterns/design_patterns/iterator_v2/collections/closest_distance_collection.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/collections/time_based_collection.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/iterators/my_iterator.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/address.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/delivery.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/gps_position.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/purchase.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/store.dart';

class DeliveryService {
  late Delivery delivery;

  MyIterator<Purchase> getClosestDelivery() {
    ClosestDistanceCollection closestDistanceCollection =
        ClosestDistanceCollection(delivery);
    return closestDistanceCollection.createIterator();
  }

  MyIterator<Purchase> getTimeBasedDelivery() {
    TimeBasedCollection closestDistanceCollection =
        TimeBasedCollection(delivery);
    return closestDistanceCollection.createIterator();
  }

  Future<void> loadDelivery() async {
    GPSPosition storePosition =
        GPSPosition(latitude: -9.7546382, longitude: -36.6577081);

    Address storeAddress = Address(name: 'Rua XYZ', position: storePosition);

    Purchase p1 = Purchase(
        date: DateTime(2021, 1, 1, 1, 1, 1),
        address: Address(
            name: 'Rua XYZ',
            position: GPSPosition(latitude: -9.755463, longitude: -36.660288)));

    Purchase p2 = Purchase(
        date: DateTime(2021, 1, 1, 1, 1, 10),
        address: Address(
            name: 'Rua XYZ',
            position: GPSPosition(latitude: -9.754934, longitude: -36.658191)));

    Purchase p3 = Purchase(
        date: DateTime(2021, 1, 1, 1, 1, 5),
        address: Address(
            name: 'Rua XYZ',
            position: GPSPosition(latitude: -9.754788, longitude: -36.657838)));

    List<Purchase> purchases = [p1, p2, p3];
    delivery = Delivery(
        purchasesToDeliver: purchases,
        store: Store(name: 'Pizzaria XYZ', address: storeAddress));
  }
}
