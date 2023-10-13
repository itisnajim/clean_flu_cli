import 'package:isar/isar.dart';

abstract class LocalData {
  const LocalData();

  final Id identifier = Isar.autoIncrement;
}
