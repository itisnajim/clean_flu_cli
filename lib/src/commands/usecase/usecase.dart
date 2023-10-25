import 'package:args/command_runner.dart';
import 'package:clean_flu_cli/src/commands/usecase/template/clean_flu_usecase_bundle.dart';
import 'package:mason/mason.dart' hide packageVersion;
import 'package:universal_io/io.dart';

/// {@template usecase_command}
/// `clean_flu usecase` command which generates domain use case classes to encapsulate business logic in a Clean Architecture Flutter project.
/// {@endtemplate}
class UsecaseCommand extends Command<int> {
  /// {@macro usecase_command}
  UsecaseCommand({required Logger logger}) : _logger = logger {
    argParser
      ..addOption(
        'group',
        abbr: 'g',
        help: "What group name should be used for the folder where you'll "
            'organize your use case file(s)?',
      )
      ..addOption(
        'name',
        abbr: 'n',
        mandatory: true,
        help: 'Name of the usecase to be created',
      )
      ..addOption(
        'type',
        abbr: 't',
        allowed: ['async', 'stream', 'basic'],
        defaultsTo: 'async',
        help: 'Type of use case (async, stream, basic).',
      );
  }

  final Logger _logger;

  @override
  String get description =>
      'Generates domain use case classes to encapsulate business logic.';

  /// The [name] of the command. But static.
  static const String commandName = 'usecase';

  @override
  String get name => commandName;

  @override
  Future<int> run() async {
    final bundle = cleanFluUsecaseBundle;
    final generator = await MasonGenerator.fromBundle(bundle);
    var vars = bundle.vars.map((key, _) {
      return MapEntry(key, argResults![key]);
    });

    _logger.info(
      '🧹 Generating domain use case classes to encapsulate business logic....',
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
      'Usecase command completed successfully. ',
    );

    return ExitCode.success.code;
  }
}
