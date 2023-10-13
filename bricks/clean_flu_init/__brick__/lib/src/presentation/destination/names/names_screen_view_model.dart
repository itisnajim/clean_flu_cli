import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../base/view_model/base_view_model.dart';
import 'names_screen_state.dart';
import 'names_screen_view_model_impl.dart';

final namesScreenViewModelProvider =
    StateNotifierProvider.autoDispose<NamesScreenViewModel, NamesScreenState>(
  (ref) => NamesScreenViewModelImpl(const NamesScreenState(
    showLoading: false,
    names: [],
  )),
);

abstract class NamesScreenViewModel extends BaseViewModel<NamesScreenState> {
  NamesScreenViewModel(super.state);

  Future<void> fetchDataFromNetwork();
}
