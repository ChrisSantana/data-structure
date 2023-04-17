import 'binary_tree.dart';

void main() {
  final BinaryTree binarySearch = BinaryTree();
  binarySearch.insert(9);
  binarySearch.insert(10);
  binarySearch.insert(7);
  binarySearch.insert(8);
  binarySearch.insert(6);

  print('Search value:');
  binarySearch.search(8);
  print('\nSearch pre order:');
  binarySearch.preOrder(binarySearch.root);
  print('\nSearch in order:');
  binarySearch.inOrder(binarySearch.root);
  print('\nSearch pos order:');
  binarySearch.posOrder(binarySearch.root);
}
