import 'package:flutter_design_patterns/design_patterns/iterator_v2/iterators/my_iterator.dart';

abstract class MyCollection<T> {
  MyIterator<T> createIterator();
}
