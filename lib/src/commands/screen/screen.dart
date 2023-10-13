import 'package:args/command_runner.dart';
import 'package:clean_flu_cli/src/commands/screen/template/clean_flu_screen_bundle.dart';
import 'package:mason/mason.dart' hide packageVersion;
import 'package:universal_io/io.dart';

/// {@template screen_command}
/// `clean_flu screen` command which creates presentation screens (pages) in a Clean Architecture Flutter project.
/// {@endtemplate}
class ScreenCommand extends Command<int> {
  /// {@macro screen_command}
  ScreenCommand({required Logger logger}) : _logger = logger {
    argParser.addOption(
      'name',
      abbr: 'n',
      help: 'Name of the screen to be created',
    );
  }

  final Logger _logger;

  @override
  String get description => 'Generates presentation screens (pages).';

  /// The [name] of the command. But static.
  static const String commandName = 'screen';

  @override
  String get name => commandName;

  @override
  Future<int> run() async {
    final bundle = cleanFluScreenBundle;
    final generator = await MasonGenerator.fromBundle(bundle);
    var vars = bundle.vars.map((key, _) {
      return MapEntry(key, argResults![key]);
    });

    _logger.info(
      '🧹 Creating presentation screen (page)....',
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
      'Screen command completed successfully. ',
    );

    return ExitCode.success.code;
  }
}
