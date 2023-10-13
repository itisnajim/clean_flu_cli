import 'dart:io';

import 'package:isar/isar.dart';

import '../../../data/base/failure.dart';
import '../exception/unknown_object_thrown_exception.dart';

Failure getFailure(Object? error) {
  if (error is SocketException) {
    return Failure.server(
      message: error.message,
      error: error,
    );
  } else if (error is HttpException) {
    return Failure.server(
      message: error.message,
      error: error,
    );
  } else if (error is IsarError) {
    return Failure.localDatabase(
      error: error,
      message: error.message,
    );
  } else if (error is Exception) {
    final String message;
    if (error.toString().startsWith("Exception: ")) {
      message = error.toString().substring(11);
    } else {
      message = error.toString();
    }
    return Failure.server(
      error: error,
      message: message,
    );
  } else {
    // Handle other types of exceptions
    return Failure.unknown(
      error: error is Exception
          ? error
          : UnknownObjectThrownException(object: error),
    );
  }
}
