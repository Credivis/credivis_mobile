extension IterableContainsAllExtension<T> on Iterable<T> {
  /// Checks if the iterable contains all elements of another iterable.
  ///
  /// Returns `true` if this iterable contains every element in [other],
  /// otherwise returns `false`.
  bool containsAll(Iterable<T> other) {
    for (final element in other) {
      if (!contains(element)) {
        return false;
      }
    }
    return true;
  }
}
