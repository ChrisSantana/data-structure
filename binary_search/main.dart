import 'binary_search.dart';

void main() {
  final BinarySearch binarySearch = BinarySearch();

  final List<int> numbers = [0, 1, 2, 3, 4];
  final int valueToSearh = 2;

  final int? valueFound = binarySearch.execute(numbers, valueToSearh);
  print(valueFound);
}
