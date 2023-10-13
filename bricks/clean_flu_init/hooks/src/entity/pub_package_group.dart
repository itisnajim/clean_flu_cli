import 'package:yaml_magic/yaml_magic.dart';

import 'pub_package.dart';

/// Represents a group of packages in a pubspec.yaml file.
class PubPackageGroup {
  final String description;
  final List<PubPackage> packages;

  /// Creates a new instance of [PubPackageGroup].
  ///
  /// The [packages] are the packages in the group.
  /// The [description] is a description of the package group.
  const PubPackageGroup(
    this.packages, {
    required this.description,
  });

  /// Converts the [PubPackageGroup] instance to a map representation.
  ///
  /// The returned map represents the package group in the format expected in a pubspec.yaml file.
  /// The [includeDescriptionComment] flag determines whether to include a description comment in the map.
  /// The [addBreakLine] flag determines whether to add a break line after the package group in the map.
  Map<String, dynamic> toMap({
    bool includeDescriptionComment = true,
    bool addBreakLine = true,
  }) {
    final packageMap = <String, dynamic>{};

    for (var package in packages) {
      packageMap.addAll(package.toMap());
    }

    return {
      if (includeDescriptionComment) ...YamlComment(description).toMap(),
      ...packageMap,
      if (addBreakLine) ...YamlBreakLine().toMap(),
    };
  }

  @override
  String toString() {
    return 'PubPackageGroup(description: $description, packages: $packages)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PubPackageGroup &&
          runtimeType == other.runtimeType &&
          description == other.description &&
          packages == other.packages;

  @override
  int get hashCode => description.hashCode ^ packages.hashCode;
}

/// Extension on [Iterable] of [PubPackageGroup] to provide additional functionality.
extension ListPubPackageGroupExt on Iterable<PubPackageGroup> {
  /// Filters the list of [PubPackageGroup] instances based on the specified [filterPackageTypes].
  ///
  /// The returned iterable contains only the [PubPackageGroup] instances that contain packages
  /// with package types present in the [filterPackageTypes] list.
  ///
  /// The [filterPackageTypes] list specifies the package types to filter by.
  Iterable<PubPackageGroup> filterByPackageTypes(
    List<PackageType> filterPackageTypes,
  ) =>
      map((group) {
        final filteredPackages = group.packages
            .where((package) => filterPackageTypes.contains(package.type))
            .toList();
        return PubPackageGroup(filteredPackages,
            description: group.description);
      }).where((group) => group.packages.isNotEmpty);

  /// Converts the list of [PubPackageGroup] instances to a map representation.
  ///
  /// The returned map represents the list of package groups in the format expected in a pubspec.yaml file.
  /// The [includeDescriptionComment] flag determines whether to include description comments in the map.
  /// The [addBreakLine] flag determines whether to add a break line after each package group in the map.
  Map<String, dynamic> toMap({
    bool includeDescriptionComment = true,
    bool addBreakLine = true,
  }) {
    final packageMap = <String, dynamic>{};

    for (var group in this) {
      packageMap.addAll(group.toMap(
        includeDescriptionComment: includeDescriptionComment,
        addBreakLine: addBreakLine,
      ));
    }

    return packageMap;
  }
}
