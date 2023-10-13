class UnknownObjectThrownException implements Exception {
  final Object? object;
  final String? message;

  const UnknownObjectThrownException({
    this.message,
    this.object,
  });
}
