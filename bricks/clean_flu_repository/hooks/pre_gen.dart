import 'dart:io';

import 'package:yaml/yaml.dart';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  final cleanFluInfo = await readCleanFluInfo();

  var name = context.vars['name'] as String?;

  if (name == null) {
    name = context.logger.prompt('What is the repository name?');
  }

  name = name.replaceAllMapped(
      RegExp(r'_?repository$', caseSensitive: false), (_) => '');

  if (name.trim().isEmpty) {
    throw Exception('❌ Repository name cannot be empty');
  }

  context.vars = {
    ...context.vars,
    'name': name,
    'useRemote': cleanFluInfo.useRemote,
    'useLocal': cleanFluInfo.useLocal,
  };
}

class CleanFluInfo {
  bool useRemote;
  bool useLocal;

  CleanFluInfo({
    required this.useRemote,
    required this.useLocal,
  });
}

Future<CleanFluInfo> readCleanFluInfo() async {
  final file = File('clean_flu.yaml');

  if (!(await file.exists())) {
    throw Exception(
        'The "clean_flu.yaml" file was not found in the project root directory. Please make sure to run the "clean_flu init" command first to generate the configuration file.');
  }

  final yamlString = await file.readAsString();
  final yamlMap = loadYaml(yamlString);

  final dataSources = yamlMap['clean_flu_init']['data_sources'] as List? ?? [];

  final useRemote =
      dataSources.contains('all') || dataSources.contains('remote');
  final useLocal = dataSources.contains('all') || dataSources.contains('local');

  return CleanFluInfo(useRemote: useRemote, useLocal: useLocal);
}
