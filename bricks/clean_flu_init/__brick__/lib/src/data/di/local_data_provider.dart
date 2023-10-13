import 'package:isar/isar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../base/database/app_database.dart';
import '../base/database/app_database_impl.dart';
import '../base/model/app_configs/local/local_app_configs.dart';

// TODO: Add your schemas here.
const List<CollectionSchema> schemas = [
  LocalAppConfigsSchema,
];

final localDataProvider = Provider<AppDatabase>(
  (ref) => const AppDatabaseImpl(schemas: schemas),
);
