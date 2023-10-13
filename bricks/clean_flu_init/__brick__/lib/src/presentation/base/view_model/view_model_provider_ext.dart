import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../screen/screen_state.dart';
import 'view_model_provider.dart';
import 'base_view_model.dart';

extension ViewModelProviderExt on BuildContext {
  AutoDisposeStateNotifierProvider<VIEW_MODEL, STATE> viewModelProvider<
      VIEW_MODEL extends BaseViewModel<STATE>, STATE extends ScreenState>() {
    return ViewModelProvider.of<VIEW_MODEL, STATE>(this).provider;
  }

  VIEW_MODEL viewModel<VIEW_MODEL extends BaseViewModel<STATE>,
      STATE extends ScreenState>(WidgetRef ref) {
    return ref.watch(viewModelProvider<VIEW_MODEL, STATE>().notifier);
  }
}
