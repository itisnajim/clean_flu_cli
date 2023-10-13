extension IterableExt on Iterable {
  bool containsAny(Iterable sub) {
    for (final element in sub) {
      if (contains(element)) {
        return true;
      }
    }
    return false;
  }

  bool containsAll(Iterable sub) {
    for (final element in sub) {
      if (!contains(element)) {
        return false;
      }
    }
    return true;
  }
}
