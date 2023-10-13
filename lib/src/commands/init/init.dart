import 'package:args/command_runner.dart';
import 'package:clean_flu_cli/src/commands/init/template/clean_flu_init_bundle.dart';
import 'package:mason/mason.dart' hide packageVersion;
import 'package:universal_io/io.dart';

/// {@template init_command}
/// `clean_flu init` command which inits the basic requirements for a clean architected project.
/// {@endtemplate}
class InitCommand extends Command<int> {
  /// {@macro init_command}
  InitCommand({required Logger logger}) : _logger = logger {
    argParser.addMultiOption(
      'data_sources',
      abbr: 'd',
      help:
          'The desired data source(s) for the clean architecture, options are: '
          '\u{1F310} remote, '
          'and '
          '\u{1F4BE} local, '
          'You can choose multiple options by separating them with commas (e.g., "remote,local") or select "all" for all options.',
      valueHelp: 'remote,local',
      allowed: [
        'remote',
        'local',
        'all',
      ],
    );
  }

  final Logger _logger;

  @override
  String get description =>
      'Initializes the basic requirements for a clean architected project.';

  /// The [name] of the command. But static.
  static const String commandName = 'init';

  @override
  String get name => commandName;

  @override
  Future<int> run() async {
    final bundle = cleanFluInitBundle;
    final generator = await MasonGenerator.fromBundle(bundle);
    var vars = bundle.vars.map((key, _) {
      return MapEntry(key, argResults![key]);
    });

    _logger.info('🧹 Initializing the project for clean architecture....');

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
      'Initialization completed successfully. '
      'The project structure and dependencies '
      'have been set up for clean architecture.',
    );

    return ExitCode.success.code;
  }
}
