import 'package:flutter_design_patterns/design_patterns/iterator/entities/tree.dart';
import 'package:flutter_design_patterns/design_patterns/iterator/iterators/i_my_iterator.dart';

class BreadthFirstIterator implements MyIterator<int> {
  Tree myTree;
  List<int> elementsToVisit = [];
  List<int> finalElements = [];

  BreadthFirstIterator(this.myTree) {
    _buildBreadthFirst();
  }

  void _buildBreadthFirst() {
    int current = elementsToVisit.removeAt(0);

    Set<int>? children = myTree.tree[current];
    for (int each in children ?? []) {
      elementsToVisit.add(each);
    }

    finalElements.add(current);

    if (elementsToVisit.isNotEmpty) {
      _buildBreadthFirst();
    }
  }

  @override
  int getNext() {
    return finalElements.removeAt(0);
  }

  @override
  bool hasNext() {
    return finalElements.isNotEmpty;
  }

  @override
  void reset() {
    // TODO: implement reset
  }
}
