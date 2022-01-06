import 'package:flutter_design_patterns/design_patterns/iterator/collections/i_tree_collection.dart';
import 'package:flutter_design_patterns/design_patterns/iterator/entities/tree.dart';
import 'package:flutter_design_patterns/design_patterns/iterator/iterators/breadth_first_iterator.dart';
import 'package:flutter_design_patterns/design_patterns/iterator/iterators/i_my_iterator.dart';

class BreadthFirstCollection implements ITreeCollection<int> {
  final Tree tree;

  BreadthFirstCollection(this.tree);

  @override
  MyIterator<int> createIterator() {
    return BreadthFirstIterator(tree);
  }
}
