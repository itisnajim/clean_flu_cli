import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';

class AppAuthenticator extends Authenticator {
  @override
  FutureOr<Request?> authenticate(
    Request request,
    Response response, [
    Request? originalRequest,
  ]) {
    if (response.statusCode == 401) {
      // TODO: Token is invalid, should be removed from the local database.
      debugPrint(
        'TODO: Token is invalid, should be removed from the local database.',
      );
      // AppDatabase.deleteToken();
    }
    return null;
  }
}
