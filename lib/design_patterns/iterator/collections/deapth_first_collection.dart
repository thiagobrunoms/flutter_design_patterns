import 'package:flutter_design_patterns/design_patterns/iterator/collections/i_tree_collection.dart';
import 'package:flutter_design_patterns/design_patterns/iterator/entities/tree.dart';
import 'package:flutter_design_patterns/design_patterns/iterator/iterators/death_first_iterator.dart';
import 'package:flutter_design_patterns/design_patterns/iterator/iterators/i_my_iterator.dart';

class DepthFirstCollection implements ITreeCollection<int> {
  final Tree tree;

  DepthFirstCollection(this.tree);

  @override
  MyIterator<int> createIterator() {
    return DepthFirstIterator(tree);
  }
}
