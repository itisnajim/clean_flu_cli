import 'dart:async';

import 'package:isar/isar.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

import 'app_database.dart';

/// An implementation of the [AppDatabase] interface that uses Isar as the underlying database.
///
/// The [AppDatabaseImpl] class provides methods for interacting with the database,
/// including retrieving, adding, updating, and deleting objects of various types.
class AppDatabaseImpl extends AppDatabase {
  final String name;

  final List<CollectionSchema> schemas;

  /// Creates an instance of [AppDatabaseImpl].
  ///
  /// The [schemas] parameter is a list of collection schemas to be used by the database.
  /// The [name] parameter specifies the name of the database (optional, default is "default").
  const AppDatabaseImpl({
    required this.schemas,
    this.name = "app_database",
  });

  /// Opens the database and returns an instance of [Isar].
  ///
  /// If the database is not yet open, this method will initialize the database and return the instance.
  /// If the database is already open, the existing instance will be returned.
  ///
  /// Returns a [Future] that resolves to the [Isar] instance.
  FutureOr<Isar> openDB() {
    var instance = Isar.getInstance(name);
    if (instance != null) return instance;

    final pathFuture = kIsWeb
        ? Future.value("/assets/db")
        : getApplicationDocumentsDirectory().then((v) => v.path);

    return pathFuture.then(
      (directory) => Isar.open(
        schemas,

        /// Name of the instance.
        name: name,
        maxSizeMiB: 256,
        // set to true to enable the inspector
        inspector: false,
        directory: directory,
      ),
    );
  }

  @override
  Future<T?> getOne<T>() {
    return get(1);
  }

  @override
  Future<T?> get<T>(int id) async {
    final isar = await openDB();
    return isar.collection<T>().get(id);
  }

  @override
  Future<List<T?>> getMany<T>(List<int> ids) async {
    final isar = await openDB();
    return isar.collection<T>().getAll(ids);
  }

  @override
  Future<List<T?>> getAll<T>() async {
    final isar = await openDB();
    return isar.collection<T>().where().findAll();
  }

  @override
  Future<int> set<T>(T object) async {
    final isar = await openDB();
    debugPrint('set: $T');
    return isar.writeTxnSync(() {
      return isar.collection<T>().putSync(object);
    });
  }

  // Isar web always returns true.
  @override
  Future<bool> delete<T>(int id) {
    return Future.value(openDB()).then(
      (isar) => isar.writeTxn(() {
        return isar.collection<T>().delete(id);
      }),
    );
  }

  @override
  Future<void> clear<T>() {
    return Future.value(openDB()).then(
      (isar) => isar.writeTxn(() {
        return isar.collection<T>().clear();
      }),
    );
  }
}
