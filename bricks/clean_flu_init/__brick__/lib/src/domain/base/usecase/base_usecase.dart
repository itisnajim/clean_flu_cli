import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../data/base/failure.dart';
import 'error_failure.dart';

abstract class BaseUsecase<IN, OUT> {
  const BaseUsecase();

  OUT callInternal(IN param);

  Either<Failure, OUT> call(IN param) {
    debugPrint("BaseUsecase: call = $param");
    try {
      final result = callInternal(param);
      return right(result);
    } catch (error, stacktrace) {
      debugPrint(
        'BaseUsecase: error: $error, runtimeType: ${error.runtimeType}',
      );
      debugPrint(stacktrace.toString());
      return left(getFailure(error));
    }
  }
}
