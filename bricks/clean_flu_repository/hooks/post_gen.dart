import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final repositoryName = context.vars['name'].toString();
  final useRemote =
      context.vars['useRemote'].toString().toLowerCase() == 'true';
  final useLocal = context.vars['useLocal'].toString().toLowerCase() == 'true';

  await appendRepositoryProviderToFile(
    repositoryName: repositoryName,
    useRemote: useRemote,
    useLocal: useLocal,
  );

  context.logger.success("""
the repository: ${repositoryName.pascalCase}Repository created successfully.
lib/src
 ┗ domain
   ┗ repository
     ┗ ${repositoryName.snakeCase}
       ┣ ${repositoryName.snakeCase}_repository.dart
       ┗ ${repositoryName.snakeCase}_repository_impl.dart
""");
}

Future<File> appendRepositoryProviderToFile({
  required String repositoryName,
  required bool useRemote,
  required bool useLocal,
}) async {
  final file = File('lib/src/domain/di/repository_providers.dart');
  final remoteService =
      useRemote ? 'ref.read(remoteDataProvider).getService(),' : '';
  final localService = useLocal ? 'ref.read(localDataProvider),' : '';
  final content = '''

final ${repositoryName.camelCase}RepositoryProvider = Provider<${repositoryName.pascalCase}Repository>(
  (ref) => ${repositoryName.pascalCase}RepositoryImpl(
    $remoteService
    $localService
  ),
);
  ''';

  if (!(await file.exists())) {
    // If the file doesn't exist, create it and add the import statement.
    await file.writeAsString(
      """import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/di/data_module.dart';

$content
""",
    );
  } else {
    // If the file exists, append the content to it.
    await file.writeAsString(content, mode: FileMode.append);
  }

  return file;
}
