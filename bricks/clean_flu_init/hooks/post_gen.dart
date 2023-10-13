import 'dart:io';

import 'package:mason/mason.dart';
import 'package:yaml_magic/yaml_magic.dart';

import 'src/entity/data_source.dart';
import 'src/entity/pub_package.dart';
import 'src/util/dependencies.dart';
import 'src/util/pub_processes.dart';
import 'src/entity/pub_package_group.dart';

void run(HookContext context) async {
  final version = context.vars['version'] as String?;

  Iterable<String>? strDataSource =
      (context.vars['data_sources'] as Iterable?)?.map((e) => e.toString());
  print('strDataSource $strDataSource version $version');
  if (version == null || (strDataSource?.isEmpty ?? true)) {
    throw ArgumentError('Missing required variables: version or data_sources');
  }
  // startTime used to calculate the total elipsed time of this `run` method!
  final startTime = DateTime.now();

  final dataSources = DataSource.fromString(strDataSource!.join(','))!;

  context.logger
      .info("📂 Project data sources: ${dataSources.names.join(', ')}");
  // TODO
  context.logger.info('''
✅ Successfully created the following project structure:
lib/src
 ┣ data
 ┃ ┣ base
 ┃ ┣ di
 ┃ ┣ mapper
 ┃ ┣ model
 ┃ ┃ ┣ local
 ┃ ┃ ┗ remote
 ┃ ┗ service
 ┃ ┃ ┣ local
 ┃ ┃ ┗ remote
 ┣ domain
 ┃ ┣ base
 ┃ ┣ di
 ┃ ┣ repository
 ┃ ┗ usecase
 ┗ presentation
   ┣ base
   ┣ di
   ┣ router
   ┗ destination
''');

  final int packagesCount =
      dependencies.map((g) => g.packages.length).reduce((v, l) => v + l);
  context.logger.info('🔢 Packages count: $packagesCount');

  final progress = context.logger.progress('✍ Modifying pubspec.yaml...');
  await modifyPubspec(dependencies);

  // Execute each pub process in the list
  for (var pubProcess in pubProcesses) {
    progress.update(pubProcess.description);
    await pubProcess.execute();
  }

  progress.update('🚀 Finalizing CleanFlu Initialization');
  final endTime = DateTime.now();
  final elapsedDuration = endTime.difference(startTime);

  await updateCleanFluConfig(
    version: version,
    dataSources: dataSources,
    elapsedDuration: elapsedDuration,
  );

  progress.complete('🚀 CleanFlu Initialization Completed');
}

/// Modifies the pubspec.yaml file by adding dependencies and configurations.
Future<void> modifyPubspec(List<PubPackageGroup> packagesGroups) async {
  final yamlMagic = YamlMagic.load('pubspec.yaml');

  final yamlDependencies = yamlMagic['dependencies'] as Map;
  final dependenciesGroups = packagesGroups.filterByPackageTypes([
    PackageType.dependency,
    PackageType.flutterSdk,
  ]);
  yamlMagic['dependencies'] = {
    ...yamlDependencies,
    ...dependenciesGroups.toMap(),
  };

  final yamlDevDependencies = yamlMagic['dev_dependencies'] as Map;
  final devDependenciesGroups = packagesGroups.filterByPackageTypes([
    PackageType.devDependency,
  ]);
  yamlMagic['dev_dependencies'] = {
    ...yamlDevDependencies,
    ...devDependenciesGroups.toMap(
      includeDescriptionComment: false,
      addBreakLine: false,
    ),
  };

  yamlMagic.map = {
    ...yamlMagic.map,
    ...YamlBreakLine().toMap(),
    ...const YamlComment('Configure flutter_gen build generatation').toMap(),
    ...{
      "flutter_gen": {
        "output": "lib/gen/",
        ...YamlBreakLine().toMap(),
        ...const YamlComment(
          'See available intergrations at:\n'
          'https://github.com/FlutterGen/flutter_gen#configuration-file\n'
          'integrations:\n'
          '  flutter_svg: true\n'
          '  flare_flutter: true\n'
          '  rive: true\n'
          '  lottie: true',
        ).toMap(),
        ...YamlBreakLine().toMap(),
        "assets": {"enabled": true},
        ...YamlBreakLine().toMap(),
        "fonts": {"enabled": true}
      },
    }
  };

  final flutter = yamlMagic['flutter'] as Map;

  yamlMagic['flutter'] = {
    ...flutter,
    ...{
      "assets": ["assets/images/"]
    }
  };

  yamlMagic.map = {
    ...yamlMagic.map,
    ...YamlBreakLine().toMap(),
    ...const YamlComment(
      'For splash screen assets generation,\n'
      'run the command below to create:\n'
      '`flutter pub run flutter_native_splash:create`',
    ).toMap(),
    ...{
      "flutter_native_splash": {
        "image": "assets/images/splash-light.png",
        "background_image": "assets/images/splash-light-background.png",
        "image_dark": "assets/images/splash-dark.png",
        "background_image_dark": "assets/images/splash-dark-background.png",
        "ios_content_mode": "scaleAspectFill"
      }
    },
  };

  await yamlMagic.save();
}

/// Updates the cleanFlu.yaml file with the initialization details.
Future<void> updateCleanFluConfig({
  required String version,
  required Iterable<DataSource> dataSources,
  required Duration elapsedDuration,
}) async {
  final yamlFile = File('clean_flu.yaml');
  if (!yamlFile.existsSync()) yamlFile.createSync();

  final yamlMagic = YamlMagic.load(yamlFile.path);
  yamlMagic['clean_flu_init'] = {
    'version': version,
    'data_sources': dataSources.names,
    ...const YamlComment(
      'The elapsed_time refers to the duration it takes for the `clean_flu init` command to finish!',
    ).toMap(),
    'elapsed_time': formatElapsedDuration(elapsedDuration),
  };
  await yamlMagic.save();
}

/// Formats the elapsed duration as a string.
String formatElapsedDuration(Duration elapsedDuration) {
  final minutes = elapsedDuration.inMinutes;
  final seconds = elapsedDuration.inSeconds % 60;
  final milliseconds = elapsedDuration.inMilliseconds % 1000;

  var formated = '';
  if (minutes > 0) formated += '${minutes}mins ';
  if (seconds > 0) formated += '${seconds}s ';
  formated += '${milliseconds}ms';
  return formated;
}
