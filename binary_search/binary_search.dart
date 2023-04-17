class BinarySearch {
  int? execute(List<int> numbers, int valueToSearch) {
    final int min = 0;
    final int max = numbers.length - 1;
    return _execute(numbers, valueToSearch, min, max);
  }

  int? _execute(List<int> values, int value, int min, int max) {
    if (max < min) return null;

    final int middle = (min + max) ~/ 2;
    final valueMiddle = values.elementAt(middle);

    if (value == valueMiddle) return valueMiddle;

    if (value < valueMiddle) {
      return _execute(values, value, min, middle - 1);
    } else {
      return _execute(values, value, middle + 1, max);
    }
  }
}
