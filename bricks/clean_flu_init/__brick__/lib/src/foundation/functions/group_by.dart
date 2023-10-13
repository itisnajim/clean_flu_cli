Map<K, List<V>> groupBy<V, K>(Iterable<V> values, K Function(V) keyFunction) {
  var groups = <K, List<V>>{};
  for (var value in values) {
    var key = keyFunction(value);
    if (!groups.containsKey(key)) {
      groups[key] = [];
    }
    groups[key]?.add(value);
  }
  return groups;
}
