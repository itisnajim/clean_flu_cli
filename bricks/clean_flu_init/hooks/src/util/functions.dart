import 'dart:io';

Future<bool> isFlutterProject() async {
  final pubspecFile = File('pubspec.yaml');
  if (await pubspecFile.exists()) {
    final pubspecContent = await pubspecFile.readAsString();
    return pubspecContent.contains('flutter:');
  }
  return false;
}

Future<bool> isCleanFluProject() async {
  final cleanFluFile = File('clean_flu.yaml');
  if (await cleanFluFile.exists()) {
    final cleanFluContent = await cleanFluFile.readAsString();
    return cleanFluContent.contains('clean_flu_init:');
  }
  return false;
}
