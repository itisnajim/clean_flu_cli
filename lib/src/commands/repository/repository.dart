import 'package:args/command_runner.dart';
import 'package:clean_flu_cli/src/commands/repository/template/clean_flu_repository_bundle.dart';
import 'package:mason/mason.dart' hide packageVersion;
import 'package:universal_io/io.dart';

/// {@template repository_command}
/// `clean_flu repository` command which generates domain repository classes for maintaining clean data access in your Flutter project.
/// {@endtemplate}
class RepositoryCommand extends Command<int> {
  /// {@macro repository_command}
  RepositoryCommand({required Logger logger}) : _logger = logger {
    argParser.addOption(
      'name',
      abbr: 'n',
      help: 'Name of the repository to be created',
    );
  }

  final Logger _logger;

  @override
  String get description =>
      'Generates domain repository classes for maintaining clean data access.';

  /// The [name] of the command. But static.
  static const String commandName = 'repository';

  @override
  String get name => commandName;

  @override
  Future<int> run() async {
    final bundle = cleanFluRepositoryBundle;
    final generator = await MasonGenerator.fromBundle(bundle);
    var vars = bundle.vars.map((key, _) {
      return MapEntry(key, argResults![key]);
    });

    _logger.info(
      '🧹 Generating domain repository classes for maintaining clean data access in your Flutter project....',
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
      'Repository command completed successfully. ',
    );

    return ExitCode.success.code;
  }
}
