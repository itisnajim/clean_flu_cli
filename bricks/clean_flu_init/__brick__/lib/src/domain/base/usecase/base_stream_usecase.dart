import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseStreamUsecase<IN, OUT> {
  const BaseStreamUsecase();

  Stream<OUT> callInternal(IN param);

  void handleErrorInternal(dynamic error) {}

  Stream<OUT> call(IN param) {
    debugPrint("BaseStreamUseCase: call: param = $param");
    return callInternal(param)
        .doOnData(
      (data) => debugPrint("BaseStreamUseCase: call: onEmit = $data"),
    )
        .handleError((error) {
      debugPrint(
        "BaseStreamUseCase: Error [$error] of type [${error.runtimeType}]",
      );
      return handleErrorInternal(error);
    });
  }
}
