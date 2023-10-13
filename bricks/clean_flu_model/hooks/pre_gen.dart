import 'dart:io';

import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

void run(HookContext context) async {
  final cleanFluInfo = await readCleanFluInfo();

  var name = context.vars['name'] as String?;

  if (name == null) {
    name = context.logger.prompt('What is the model name?');
  }

  name = name.replaceAll(
    RegExp(r'model|local|remote|_', caseSensitive: false),
    '',
  );

  if (name.trim().isEmpty) {
    throw Exception('❌ Model name cannot be empty');
  }

  var properties =
      (context.vars['properties'] as List?)?.map((e) => e.toString()).toList();
  if (properties == null) {
    properties = context.logger.promptAny(
        "What are the properties associated with the model? separating each item with a comma, or press enter to skip (e.g: String firstName, String lastName, String? avatar, DateTime createdAt).");
  }
  properties = properties.map((e) => e.toString().trim()).toList();

  final isPropertiesExists = properties.isNotEmpty;

  final propertiesWithType = properties.map((item) {
    final name = item.split(' ').last.trim();
    String type = 'Object';
    if (item.split(' ').length > 1) {
      type = (item.split(' ')..removeLast()).join().trim();
    }
    return '$type $name';
  }).toList();

  final namedParameters = properties.map((item) {
    final name = item.split(' ').last.trim();
    String type = 'Object';
    if (item.split(' ').length > 1) {
      type = (item.split(' ')..removeLast()).join().trim();
    }
    return type.contains('?') ? 'this.$name' : 'required this.$name';
  }).toList();

  final namedConstructorParameters = properties.map((item) {
    final name = item.split(' ').last.trim();
    String type = 'Object';
    if (item.split(' ').length > 1) {
      type = (item.split(' ')..removeLast()).join().trim();
    }
    return type.contains('?') ? '$type $name' : 'required $type $name';
  }).toList();

  context.vars = {
    ...context.vars,
    'name': name,
    'isPropertiesExists': isPropertiesExists,
    'properties': properties,
    'propertiesWithType': propertiesWithType,
    'namedParameters': namedParameters,
    'namedConstructorParameters': namedConstructorParameters,
    'useRemote': cleanFluInfo.useRemote,
    'useLocal': cleanFluInfo.useLocal,
  };
}

class CleanFluInfo {
  final bool useRemote;
  final bool useLocal;

  const CleanFluInfo({
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
