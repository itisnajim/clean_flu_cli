import 'dart:io';

import 'package:mason/mason.dart';

import 'src/use_case_types.dart';

void run(HookContext context) async {
  final isInitialized = await File('clean_flu.yaml').exists();
  if (!isInitialized) {
    throw 'The "clean_flu.yaml" file was not found in the project root directory. Please make sure to run the "clean_flu init" command first to generate the configuration file.';
  }

  var group = context.vars['group'] as String?;
  if (group == null) {
    group = context.logger.prompt('What is the UseCase group folder name?');
  }
  group = group.replaceAllMapped(
      RegExp(r'_?(useCase|use_case)$', caseSensitive: false), (_) => '');
  if (group.trim().isEmpty) {
    throw Exception('❌ UseCase group name cannot be empty');
  }

  var name = context.vars['name'] as String?;
  if (name == null) {
    name = context.logger.prompt('What is the useCase name?');
  }
  name = name.replaceAllMapped(
      RegExp(r'_?(useCase|use_case)$', caseSensitive: false), (_) => '');
  if (name.trim().isEmpty) {
    throw Exception('❌ UseCase name cannot be empty');
  }

  var type = context.vars['type'] as String?;
  if (type == null) {
    type = context.logger.chooseOne(
      'What is the UseCase type?',
      choices: ['async', 'stream', 'basic'],
      defaultValue: 'async',
    );
  }

  final classToUse = type == UseCaseTypes.async.name
      ? 'BaseAsyncUsecase'
      : type == UseCaseTypes.stream.name
          ? 'BaseStreamUsecase'
          : 'BaseUsecase';
  final internalOutputType = type == UseCaseTypes.async.name
      ? 'Future<OUT_TYPE>'
      : type == UseCaseTypes.stream.name
          ? 'Stream<OUT_TYPE>'
          : 'OUT_TYPE';
  print(
      'type $type classToUse $classToUse internalOutputType $internalOutputType');

  context.vars = {
    ...context.vars,
    'name': name,
    'group': group,
    'type': type,
    'classToUse': classToUse,
    'internalOutputType': internalOutputType,
    'isAsync': type == UseCaseTypes.async.name,
    'isStream': type == UseCaseTypes.stream.name,
    'isBasic': type == UseCaseTypes.basic.name,
  };
}
