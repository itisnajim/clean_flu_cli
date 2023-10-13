/// An abstract class representing an app database.
///
/// The [AppDatabase] class defines methods for interacting with the database,
/// including retrieving, adding, updating, and deleting objects of various types.
abstract class AppDatabase {
  const AppDatabase();

  /// Retrieves an object of type [T] that has id = 1
  ///
  /// Returns a [Future] that resolves to the retrieved object or null if not found.
  Future<T?> getOne<T>();

  /// Retrieves an object of type [T] based on its ID.
  ///
  /// Returns a [Future] that resolves to the retrieved object or null if not found.
  Future<T?> get<T>(int id);

  /// Retrieves multiple objects of type [T] based on their IDs.
  ///
  /// Returns a [Future] that resolves to a list of retrieved objects or null if not found.
  Future<List<T?>> getMany<T>(List<int> ids);

  /// Retrieves all objects of type [T].
  ///
  /// Returns a [Future] that resolves to a list of all objects of type [T].
  Future<List<T?>> getAll<T>();

  /// Adds or updates an object of type [T] in the database.
  ///
  /// If the object already exists in the database, it will be updated.
  /// If the object does not exist, it will be added.
  ///
  /// Returns a [Future] that resolves to the ID of the added or updated object.
  Future<int> set<T>(T object);

  /// Deletes a single object of type [T] from the database based on its ID.
  ///
  /// Returns a [Future] that resolves to a boolean indicating whether the object has been deleted.
  Future<bool> delete<T>(int id);

  /// Removes all data in the collection of type [T] and resets the auto-increment value.
  ///
  /// Returns a [Future] that resolves when the operation is complete.
  Future<void> clear<T>();
}
