import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final progress = context.logger
      .progress('Creating the ${context.vars['name']} screen route');
  await appendRouteCodeToFile(
    'lib/src/presentation/router/routes.dart',
    name: context.vars['name'] as String,
  );

  progress
      .update('Generating code for the ${context.vars['name']} state & route.');

  await runBuildRunner([
    './lib/src/presentation/destination/'
        '${context.vars['name'].toString().snakeCase}/*.dart',
    './lib/src/presentation/router/*.dart'
  ]);

  progress.complete("""
the screen: ${context.vars['name'].toString().pascalCase}Screen created successfully.
lib/src
 ┗ presentation
   ┗ destination
     ┗ ${context.vars['name'].toString().snakeCase}
       ┣ ${context.vars['name'].toString().snakeCase}_screen.dart
       ┣ ${context.vars['name'].toString().snakeCase}_screen_state.dart
       ┣ ${context.vars['name'].toString().snakeCase}_screen_view_model_impl.dart
       ┗ ${context.vars['name'].toString().snakeCase}_screen_view_model.dart
""");
}

Future<File> appendRouteCodeToFile(
  String filePath, {
  required String name,
}) async {
  final contentToAppend = getRouteCodeString(name);

  final file = File(filePath);
  final screenImport =
      "import '../destination/${name.snakeCase}/${name.snakeCase}_screen.dart';";

  if (!await file.exists()) {
    await file.create(recursive: true);

    await file.writeAsString('''
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

$screenImport

part 'routes.g.dart';

$contentToAppend
''', mode: FileMode.writeOnly);
  } else {
    final fileContent = await file.readAsString();
    if (!fileContent.contains(screenImport)) {
      // Inject the import statement just before 'part'.
      final newContent =
          fileContent.replaceFirst("part '", "$screenImport\n\npart '") +
              '\n' +
              contentToAppend;
      await file.writeAsString(newContent, mode: FileMode.write);
    }
  }

  return file;
}

String getRouteCodeString(String name) {
  final pascalCase = name.pascalCase;
  final paramCase = name.paramCase;

  final content = """
@TypedGoRoute<${pascalCase}Route>(path: ${pascalCase}Route.path)
class ${pascalCase}Route extends GoRouteData {
  static const String path = '/$paramCase';
  static final \$parentNavigatorKey = rootNavigatorKey;

  const ${pascalCase}Route();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ${pascalCase}Screen();
  }
}
""";

  return content;
}

Future<void> runBuildRunner(List<String> targets) {
  //print('file paths $targets');

  final command = 'dart';
  final arguments = [
    'run',
    'build_runner',
    'build',
    '-d',
  ];
  targets.forEach((target) {
    arguments.add('--build-filter=$target');
  });

  //print('Running Command: $command ${arguments.join(' ')}');

  return Process.run(command, arguments);
}
