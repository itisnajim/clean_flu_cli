import 'package:freezed_annotation/freezed_annotation.dart';

import '../../base/screen/screen_state.dart';

part 'settings_screen_state.freezed.dart';

@freezed
class SettingsScreenState with _$SettingsScreenState implements ScreenState {
  const factory SettingsScreenState({
    required bool showLoading,
    required List<String> namesList,
  }) = SsettingsScreenState;
}
