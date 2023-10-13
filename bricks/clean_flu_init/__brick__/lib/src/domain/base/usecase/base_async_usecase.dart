import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../data/base/failure.dart';
import 'error_failure.dart';

abstract class BaseAsyncUsecase<IN, OUT> {
  const BaseAsyncUsecase();
  Future<OUT> callInternal(IN param);

  Future<Either<Failure, OUT>> call(IN param) async {
    debugPrint("BaseAsyncUsecase: call: param = $param");
    try {
      return right(await callInternal(param));
    } catch (error, stacktrace) {
      debugPrint(
        'BaseAsyncUsecase: error: $error, runtimeType: ${error.runtimeType}',
      );
      debugPrint(stacktrace.toString());
      return left(getFailure(error));
    }
  }
}
