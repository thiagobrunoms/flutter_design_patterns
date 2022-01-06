class Tree {
  Map<int, Set<int>> tree = {};

  void addElement(int key, int value) {
    if (tree.containsKey(key)) {
      tree[key]?.add(value);
    } else {
      tree[key] = {value};
    }
  }

  @override
  String toString() => '$tree';
}
