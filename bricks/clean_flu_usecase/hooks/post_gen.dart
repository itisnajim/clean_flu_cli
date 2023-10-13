import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final useCaseName = context.vars['name'].toString();
  final groupName = context.vars['group'].toString();

  await appendUseCaseProviderToFile(
    useCaseName: useCaseName,
    groupName: groupName,
  );

  context.logger.success("""
the useCase: ${useCaseName.pascalCase}Usecase created successfully.
lib/src
 ┗ domain
   ┗ usecase
     ┗ ${groupName.snakeCase}
       ┗ ${useCaseName.snakeCase}_usecase.dart
""");
}

Future<File> appendUseCaseProviderToFile({
  required String useCaseName,
  required String groupName,
}) async {
  final file = File('lib/src/domain/di/usecase_providers.dart');

  final repositoryProvidersImport = "import 'repository_providers.dart';";
  final useCaseImport =
      "import '../usecase/${groupName.snakeCase}/${useCaseName.snakeCase}_usecase.dart';";

  final content = '''

final ${useCaseName.camelCase}UsecaseProvider = Provider(
  (ref) => ${useCaseName.pascalCase}Usecase(
    ref.read(${groupName.camelCase}RepositoryProvider),
  ),
);
  ''';

  if (!(await file.exists())) {
    // If the file doesn't exist, create it and add the import statement.
    await file.writeAsString(
      "import 'package:hooks_riverpod/hooks_riverpod.dart';\n$useCaseImport\n$repositoryProvidersImport\n\n$content",
    );
  } else {
    final fileContent = await file.readAsString();
    if (!fileContent.contains(useCaseImport)) {
      // Inject the import statement just before 'part'.
      final newContent = fileContent.replaceFirst(repositoryProvidersImport,
              "$useCaseImport\n$repositoryProvidersImport") +
          '\n' +
          content;
      await file.writeAsString(newContent, mode: FileMode.write);
    }
  }

  return file;
}
