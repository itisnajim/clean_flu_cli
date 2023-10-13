import 'res.dart';

/// The translations for English (`en`).
class ResourceEn extends Resource {
  ResourceEn([String locale = 'en']) : super(locale);

  @override
  String hello(Object name) {
    return 'Hello $name';
  }
}
