import 'package:freezed_annotation/freezed_annotation.dart';

import '../../base/screen/screen_state.dart';

part 'names_screen_state.freezed.dart';

@freezed
class NamesScreenState with _$NamesScreenState implements ScreenState {
  const factory NamesScreenState({
    required bool showLoading,
    required List<String> names,
  }) = _NamesScreenState;
}
