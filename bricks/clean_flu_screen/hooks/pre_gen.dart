import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final isInitialized = await File('clean_flu.yaml').exists();
  if (!isInitialized) {
    throw 'The "clean_flu.yaml" file was not found in the project root directory. Please make sure to run the "clean_flu init" command first to generate the configuration file.';
  }

  var name = context.vars['name'] as String?;

  if (name == null) {
    name = context.logger.prompt('What is the screen name?');
  }

  name = name.replaceAllMapped(
      RegExp(r'_?screen$', caseSensitive: false), (_) => '');

  if (name.trim().isEmpty) {
    throw Exception('❌ Screen name cannot be empty');
  }

  context.vars = {
    ...context.vars,
    'name': name,
  };
}
