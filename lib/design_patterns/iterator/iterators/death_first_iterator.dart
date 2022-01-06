import 'package:flutter_design_patterns/design_patterns/iterator/entities/tree.dart';
import 'package:flutter_design_patterns/design_patterns/iterator/iterators/i_my_iterator.dart';

class DepthFirstIterator implements MyIterator<int> {
  Tree theTree;
  List<int> elementsToVisit = [];

  DepthFirstIterator(this.theTree) {
    _postOrderDeathFirst(1);
  }

  void _postOrderDeathFirst(int key) {
    Set<int>? children = theTree.tree[key];

    for (int each in children ?? []) {
      if (theTree.tree[each] == null) {
        elementsToVisit.add(each);
      } else {
        _postOrderDeathFirst(each);
      }
    }

    elementsToVisit.add(key);
  }

  @override
  int getNext() {
    return elementsToVisit.removeAt(0);
  }

  @override
  bool hasNext() {
    return elementsToVisit.isNotEmpty;
  }

  @override
  void reset() {
    elementsToVisit = [];
    _postOrderDeathFirst(1);
  }
}
