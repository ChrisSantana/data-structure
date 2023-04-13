import 'no_tree.dart';

class BinarySearch {
  NoTree? root;

  NoTree insert(int value) {
    return root = _insertValue(root, value);
  }

  NoTree _insertValue(NoTree? noCurrent, int value) {
    if (noCurrent == null) {
      return NoTree(value: value);
    }

    if (value < noCurrent.value) {
      noCurrent.leftNo = _insertValue(noCurrent.leftNo, value);
    } else {
      noCurrent.rigthNo = _insertValue(noCurrent.rigthNo, value);
    }

    return noCurrent;
  }

  NoTree? search(int value) {
    NoTree? noCurrent = root;
    while (noCurrent != null && noCurrent.value != value) {
      if (value < noCurrent.value) {
        noCurrent = noCurrent.leftNo;
      } else {
        noCurrent = noCurrent.rigthNo;
      }
    }
    print(noCurrent?.value);
    return noCurrent;
  }

  void preOrder(NoTree? noTree) {
    if (noTree != null) {
      print(noTree.value);
      preOrder(noTree.leftNo);
      preOrder(noTree.rigthNo);
    }
  }

  void inOrder(NoTree? noTree) {
    if (noTree != null) {
      preOrder(noTree.leftNo);
      print(noTree.value);
      preOrder(noTree.rigthNo);
    }
  }

  void posOrder(NoTree? noTree) {
    if (noTree != null) {
      preOrder(noTree.leftNo);
      preOrder(noTree.rigthNo);
      print(noTree.value);
    }
  }
}
