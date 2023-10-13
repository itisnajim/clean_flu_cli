import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../base/view_model/base_view_model.dart';
import 'settings_screen_state.dart';
import 'settings_screen_view_model_impl.dart';

final settingsScreenViewModelProvider = StateNotifierProvider.autoDispose<
    SettingsScreenViewModel, SettingsScreenState>(
  (ref) => SettingsScreenViewModelImpl(const SettingsScreenState(
    showLoading: false,
    namesList: [],
  )),
);

abstract class SettingsScreenViewModel
    extends BaseViewModel<SettingsScreenState> {
  SettingsScreenViewModel(super.state);
}
