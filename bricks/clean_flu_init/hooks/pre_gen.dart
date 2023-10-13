import 'package:mason/mason.dart' hide packageVersion;
import 'src/util/extensions.dart';
import 'src/entity/data_source.dart';
import 'src/util/functions.dart';

import 'version.dart';

void run(HookContext context) async {
  final checkProgress = context.logger
      .progress('🔍 Checking if the current directory is a Flutter project...');
  final isFlutter = await isFlutterProject();
  if (!isFlutter) {
    final message = 'Not a Flutter project. '
        'Please run this command inside a Flutter project.\n';
    checkProgress.fail(message);
    throw Exception(message);
  }
  final isCleanFlu = await isCleanFluProject();
  if (isCleanFlu) {
    final message =
        'The project is already initialized with CleanFlu. Please proceed with other actions.\n';
    checkProgress.fail(message);
    throw Exception(message);
  }

  checkProgress.cancel();

  Iterable<String>? strDataSources =
      (context.vars['data_sources'] as Iterable?)?.map((e) => e.toString());
  Iterable<DataSource>? sources =
      DataSource.fromString((strDataSources ?? []).join(','));
  if (sources?.isEmpty ?? true) {
    strDataSources = context.logger.chooseAny(
      'Please select the desired data sources: (remote,local)',
      choices: DataSource.list.map((e) => e.name).toList(),
      defaultValues: DataSource.defaultList.map((e) => e.name).toList(),
    );
  }

  sources = DataSource.fromString((strDataSources ?? []).join(',')) ??
      DataSource.defaultList;

  final toMerge = {
    'data_sources': sources.map((e) => e.name).toList(),
    'useRemote': sources.containsAny([DataSource.remote, DataSource.all]),
    'useLocal': sources.containsAny([DataSource.local, DataSource.all]),
    'version': packageVersion
  };

  print('toMerge: $toMerge');

  context.vars = {
    ...context.vars,
    ...toMerge,
  };
}
