import 'package:flutter_design_patterns/design_patterns/iterator_v2/iterators/my_iterator.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/address.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/delivery.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/purchase.dart';

class TimeBasedIterator implements MyIterator<Purchase> {
  final Delivery delivery;
  late List<Purchase> elements;

  TimeBasedIterator(this.delivery) {
    _buildIterableItens();
  }

  void _buildIterableItens() {
    elements = [];
    delivery.purchasesToDeliver.sort();
    elements.addAll(delivery.purchasesToDeliver);
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
    _buildIterableItens();
  }
}
