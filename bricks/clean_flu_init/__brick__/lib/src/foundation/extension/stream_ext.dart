import 'dart:async' show Timer, StreamTransformer;

extension StreamExt<T> on Stream<T> {
  Stream<T> debounceTime(Duration duration) {
    Timer? timer;
    return transform(StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        timer?.cancel();
        timer = Timer(duration, () => sink.add(data));
      },
    ));
  }
}
