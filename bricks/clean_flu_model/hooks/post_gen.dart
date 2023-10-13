import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final progress = context.logger.progress(
      'Generating models and entities code for ${context.vars['name']}');

  final useRemote =
      context.vars['useRemote'].toString().toLowerCase() == 'true';
  final useLocal = context.vars['useLocal'].toString().toLowerCase() == 'true';
  var errorMessage = "";
  try {
    await runBuildRunner([
      if (useLocal)
        './lib/src/data/model/'
            '${context.vars['name'].toString().snakeCase}/local/*.dart',
      if (useRemote)
        './lib/src/data/model/'
            '${context.vars['name'].toString().snakeCase}/remote/*.dart',
      './lib/src/domain/entity/*.dart',
    ]);
  } catch (e) {
    errorMessage = e.toString();
  }

  final localTree = !useLocal
      ? ''
      : """
       ┗ local
         ┣ local_${context.vars['name'].toString().snakeCase}.dart
         ┗ local_${context.vars['name'].toString().snakeCase}.g.dart
""";

  final remoteTree = !useRemote
      ? ''
      : """
       ┗ remote
         ┣ remote_${context.vars['name'].toString().snakeCase}.dart
         ┗ remote_${context.vars['name'].toString().snakeCase}.g.dart
""";

  progress.complete("""
the model: ${context.vars['name'].toString().pascalCase} created successfully.
lib/src
 ┣ domain
 ┃ ┗ entity
 ┃   ┣ ${context.vars['name'].toString().snakeCase}.dart
 ┃   ┗ ${context.vars['name'].toString().snakeCase}.freezed.dart
 ┗ data
   ┗ model
     ┗ ${context.vars['name'].toString().snakeCase}
$localTree$remoteTree
""");

  if (errorMessage.isNotEmpty) {
    context.logger.err(
      "Check these files to see if you need to adjust the data types for the model properties.\n\nDetails:\n$errorMessage",
    );
  }
}

Future<void> runBuildRunner(List<String> targets) async {
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

  final result = await Process.run(command, arguments);
  if (result.stdout.toString().contains('Failed after')) {
    throw Exception(
        'Build failed with exit code ${result.exitCode}, Log:\n${result.stdout}');
  }
}
