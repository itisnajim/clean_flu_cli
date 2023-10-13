import '../entity/pub_package.dart';
import '../entity/pub_package_group.dart';
import '../entity/data_source.dart';

const dependencies = [
  PubPackageGroup(
    [
      PubPackage.flutterSdk('flutter_localizations'),
      PubPackage(
        'intl',
        version: '^0.18.0',
      ),
    ],
    description: 'Internationalizing'
        '\nRun `flutter gen-l10n` to generate resources',
  ),
  PubPackageGroup(
    [
      PubPackage(
        'cupertino_icons',
        version: '^1.0.5',
      ),
      PubPackage(
        'dartz',
        version: '^0.10.1',
      ),
      PubPackage(
        'jiffy',
        version: '^6.2.1',
      ),
      PubPackage(
        'freezed',
        version: '^2.4.1',
        isDev: true,
        source: DataSource.remote,
      ),
      PubPackage(
        'freezed_annotation',
        version: '^2.4.1',
        source: DataSource.remote,
      ),
      PubPackage(
        'flex_color_scheme',
        version: '^7.3.1',
      ),
      PubPackage(
        'flutter_gen_runner',
        version: '^5.3.1',
        isDev: true,
      ),
      PubPackage(
        'build_runner',
        version: '^2.4.6',
        isDev: true,
      ),
    ],
    description: 'Utilities and Services',
  ),
  PubPackageGroup(
    [
      PubPackage(
        'go_router',
        version: '^11.1.2',
      ),
      PubPackage(
        'go_router_builder',
        version: '^2.3.3',
        isDev: true,
      ),
    ],
    description: 'Navigation',
  ),
  PubPackageGroup(
    [
      PubPackage(
        'hooks_riverpod',
        version: '^2.4.2',
      ),
      PubPackage(
        'riverpod_generator',
        version: '^2.3.2',
        isDev: true,
      ),
      PubPackage(
        'flutter_hooks',
        version: '^0.20.2',
      ),
    ],
    description: 'State Managements & Hooks',
  ),
  PubPackageGroup(
    [
      PubPackage(
        'chopper',
        version: '^7.0.6',
        source: DataSource.remote,
      ),
      PubPackage(
        'chopper_generator',
        version: '^7.0.4',
        source: DataSource.remote,
      ),
      PubPackage(
        'json_annotation',
        version: '^4.8.1',
        source: DataSource.remote,
      ),
      PubPackage(
        'json_serializable',
        isDev: true,
        version: '^6.7.1',
        source: DataSource.remote,
      ),
    ],
    description: 'Networking',
  ),
  PubPackageGroup(
    [
      PubPackage(
        'isar',
        version: '^3.1.0+1',
        source: DataSource.local,
      ),
      PubPackage(
        'isar_flutter_libs',
        version: '^3.1.0+1',
        source: DataSource.local,
      ),
    ],
    description: 'Local Storage',
  ),
  PubPackageGroup(
    [
      PubPackage(
        'isar_generator',
        isDev: true,
        version: '^3.1.0+1',
        source: DataSource.local,
      ),
    ],
    description: 'Local Storage',
  ),
  PubPackageGroup(
    [
      PubPackage(
        'cached_network_image',
        version: '^3.3.0',
      ),
      PubPackage(
        'flutter_adaptive_scaffold',
        version: '^0.1.7+1',
      ),
    ],
    description: 'UI & Widgets',
  ),
  PubPackageGroup(
    [
      PubPackage(
        'flutter_native_splash',
        version: '^2.3.3',
      ),
    ],
    description: 'For splash screen assets generation,\n'
        'run the command below to create:\n'
        '`flutter pub run flutter_native_splash:create`',
  ),
];

List<PubPackageGroup> filterDependenciesBySources(List<DataSource> sources,
    {Iterable<String> excludeNames = const []}) {
  return dependencies
      .map((group) {
        final filteredPackages = group.packages
            .where(
              (pkg) =>
                  (sources.contains(pkg.source) ||
                      pkg.source == DataSource.all ||
                      sources.contains(DataSource.all)) &&
                  !excludeNames.contains(pkg.name),
            )
            .toList();
        return PubPackageGroup(
          filteredPackages,
          description: group.description,
        );
      })
      .where((group) => group.packages.isNotEmpty)
      .toList();
}
