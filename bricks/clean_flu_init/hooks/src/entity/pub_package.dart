import 'data_source.dart';

enum PackageType { dependency, devDependency, flutterSdk }

/// Represents a package in a pubspec.yaml file.
class PubPackage {
  final String name;
  final String version;
  final PackageType type;
  final DataSource source;

  /// Creates a new instance of [PubPackage].
  ///
  /// The [name] is the name of the package.
  /// The [version] is the package version.
  /// The [source] specifies the data source used for (remote, local, or dual).
  /// The [isDev] flag indicates if the package is a dev dependency.
  const PubPackage(
    this.name, {
    required this.version,
    this.source = DataSource.all,
    bool isDev = false,
  }) : type = isDev ? PackageType.devDependency : PackageType.dependency;

  /// Creates a new instance of [PubPackage] representing the Flutter SDK.
  ///
  /// The [name] is the name of the Flutter SDK package.
  const PubPackage.flutterSdk(this.name)
      : version = '',
        source = DataSource.all,
        type = PackageType.flutterSdk;

  /// Converts the [PubPackage] instance to a map representation.
  ///
  /// The returned map represents the package in the format expected in a pubspec.yaml file.
  Map<String, dynamic> toMap() => type != PackageType.flutterSdk
      ? {name: version}
      : {
          name: {'sdk': 'flutter'},
        };

  @override
  String toString() {
    return 'PubPackage(name: $name, version: $version, type: $type, source: $source)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PubPackage &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          version == other.version &&
          type == other.type &&
          source == other.source;

  @override
  int get hashCode =>
      name.hashCode ^ version.hashCode ^ type.hashCode ^ source.hashCode;
}
