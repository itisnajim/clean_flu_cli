import 'dart:io';

enum PubProcessExecutable { flutter, dart }

/// Represents a command process related with pubspec.yaml.
class PubProcess {
  final String description;
  final List<String> args;
  final PubProcessExecutable executable;

  /// Creates a [PubProcess] with the specified [description], [args], and [executable].
  ///
  /// The [description] provides a description of the process.
  /// The [args] is a list of arguments for the process.
  /// The [executable] determines whether the executable process is a Flutter or Dart.
  const PubProcess({
    required this.description,
    required this.args,
    this.executable = PubProcessExecutable.flutter,
  });

  /// Executes the process based on the specified arguments and type.
  Future<void> execute() async {
    final command =
        executable == PubProcessExecutable.flutter ? 'flutter' : 'dart';
    await Process.run(command, args);
  }
}
