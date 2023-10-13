import '../entity/pub_process.dart';

const pubProcesses = [
  PubProcess(
    description: '⬇️ Running `flutter pub get` & 📦 Installing dependencies',
    args: ['pub', 'get'],
  ),
  PubProcess(
    description: '🏗️ Running build runner',
    args: ['run', 'build_runner', 'build', '-d'],
    executable: PubProcessExecutable.dart,
  ),
  PubProcess(
    description: '🌐 Generating localizations resources',
    args: ['gen-l10n'],
  ),
  PubProcess(
    description: '🖌️ Generating native splash screen',
    args: ['pub', 'run', 'flutter_native_splash:create'],
  ),
];
