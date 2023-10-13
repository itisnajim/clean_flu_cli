import '../util/extensions.dart';

enum DataSource {
  remote,
  local,
  all;

  String get name => toString().split('.').last;

  static const List<DataSource> list = [
    remote,
    local,
    all,
  ];
  static const List<DataSource> listOmitAll = [
    remote,
    local,
  ];
  static const List<DataSource> defaultList = [remote, local];

  static bool isValid(Iterable<String> sources) {
    if (sources.isEmpty) return false;

    return sources.every((source) => list.any((el) => el.name == source));
  }

  static List<DataSource>? fromString(String value) {
    final sources = value.split(',').map((s) => s.trim());
    if (sources.isEmpty || !isValid(sources)) return null;
    final dataSources =
        sources.map((s) => list.firstWhere((el) => el.name == s));
    if (dataSources.containsAll(listOmitAll) || dataSources.contains(all)) {
      return [all];
    } else {
      return dataSources.toSet().toList();
    }
  }
}

extension IterableDataSourceExt on Iterable<DataSource> {
  List<String> get names => map((e) => e.name).toList();
}
