import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../foundation/extension/stream_ext.dart';
import '../../entity/effect/effect.dart';
import '../screen/screen_state.dart';

abstract class BaseViewModel<STATE extends ScreenState>
    extends StateNotifier<STATE> {
  final List<StreamSubscription> _streamSubscriptions = [];
  final _effectController = StreamController<Effect?>();

  Stream<Effect?> get effectStream => _effectController.stream;

  BaseViewModel(STATE state) : super(state) {
    onInit();
  }

  @protected
  void onInit();

  void setEffect(Effect effect) {
    _effectController.add(effect);
    _effectController.add(null);
  }

  void listen<T>({
    required Stream<T> stream,
    required void Function(T data) onData,
  }) {
    final subscription = stream.listen(onData);
    _streamSubscriptions.add(subscription);
  }

  void listenDebounce<T>({
    required Stream<T> stream,
    required Duration debounceDuration,
    required void Function(T data) onData,
  }) {
    final subscription = stream.debounceTime(debounceDuration).listen(onData);
    _streamSubscriptions.add(subscription);
  }

  @override
  void dispose() {
    super.dispose();
    for (var subscription in _streamSubscriptions) {
      subscription.cancel();
    }
  }
}
