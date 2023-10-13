import 'package:args/command_runner.dart';
import 'package:clean_flu_cli/src/commands/model/template/clean_flu_model_bundle.dart';
import 'package:mason/mason.dart' hide packageVersion;
import 'package:universal_io/io.dart';

/// {@template model_command}
/// `clean_flu model` command which generates data models and domain entities in your clean-architected project.
/// {@endtemplate}
class ModelCommand extends Command<int> {
  /// {@macro model_command}
  ModelCommand({required Logger logger}) : _logger = logger {
    argParser
      ..addOption(
        'name',
        abbr: 'n',
        help: 'Name of the model to be created',
      )
      ..addMultiOption(
        'properties',
        abbr: 'p',
        help: 'List the properties associated with the model',
        valueHelp:
            'String firstName, String lastName, String? avatar, DateTime createdAt',
      );
  }

  final Logger _logger;

  @override
  String get description => 'Generates data models and domain entities.';

  /// The [name] of the command. But static.
  static const String commandName = 'model';

  @override
  String get name => commandName;

  @override
  Future<int> run() async {
    final bundle = cleanFluModelBundle;
    final generator = await MasonGenerator.fromBundle(bundle);
    var vars = bundle.vars.map((key, _) {
      final val = argResults![key] is Iterable? &&
              ((argResults![key] as Iterable?)?.isEmpty ?? true)
          ? null
          : argResults![key];
      return MapEntry(key, val);
    });

    _logger.info(
      '🧹 Generates data models and domain entities in your clean-architected project....',
    );

    await generator.hooks.preGen(
      vars: vars,
      onVarsChanged: (v) => vars = v,
      logger: _logger,
    );

    await generator.generate(
      DirectoryGeneratorTarget(Directory.current),
      vars: vars,
      logger: _logger,
    );

    await generator.hooks.postGen(
      vars: vars,
      onVarsChanged: (v) => vars = v,
      logger: _logger,
    );

    _logger.success(
      'Model command completed successfully.',
    );

    return ExitCode.success.code;
  }
}
