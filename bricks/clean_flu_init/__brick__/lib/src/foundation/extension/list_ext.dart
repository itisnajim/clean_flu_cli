/// Extension on `List<T>` providing a handy method to duplicate the elements of the list.
extension ListDuplicate<T> on List<T> {
  /// Duplicates the elements of the list a specified number of times.
  ///
  /// Returns a new list with the duplicated elements.
  ///
  /// Example:
  /// ```dart
  /// final originalList = [1, 2, 3];
  /// final duplicatedList = originalList.duplicate(3);
  /// print(duplicatedList); // Output: [1, 2, 3, 1, 2, 3, 1, 2, 3]
  /// ```
  List<T> duplicate(int times) {
    List<T> duplicatedList = [];
    for (int i = 0; i < times; i++) {
      duplicatedList.addAll(this);
    }
    return duplicatedList;
  }
}
