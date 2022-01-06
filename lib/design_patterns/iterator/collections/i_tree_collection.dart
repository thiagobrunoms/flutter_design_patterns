import 'package:flutter_design_patterns/design_patterns/iterator/iterators/i_my_iterator.dart';

abstract class ITreeCollection<T> {
  MyIterator<T> createIterator();
}
