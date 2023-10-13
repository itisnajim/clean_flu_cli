import 'package:flutter/foundation.dart';

abstract class BaseUnsafeUsecase<IN, OUT> {
  const BaseUnsafeUsecase();

  OUT callInternal(IN param);

  OUT call(IN param) {
    debugPrint("BaseUnsafeUseCase: call: param = $param");
    return callInternal(param);
  }
}
