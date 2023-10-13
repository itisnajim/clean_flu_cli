import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../screen/screen_state.dart';

import 'base_view_model.dart';

class ViewModelProvider<VIEW_MODEL extends BaseViewModel<STATE>,
    STATE extends ScreenState> extends InheritedWidget {
  final AutoDisposeStateNotifierProvider<VIEW_MODEL, STATE> provider;

  const ViewModelProvider({
    Key? key,
    required Widget child,
    required this.provider,
  }) : super(key: key, child: child);

  static ViewModelProvider<VIEW_MODEL, STATE>
      of<VIEW_MODEL extends BaseViewModel<STATE>, STATE extends ScreenState>(
          BuildContext context) {
    final ViewModelProvider<VIEW_MODEL, STATE>? result =
        context.dependOnInheritedWidgetOfExactType<
            ViewModelProvider<VIEW_MODEL, STATE>>();
    assert(result != null,
        'No View Model Provider of type $VIEW_MODEL found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant ViewModelProvider oldWidget) {
    return oldWidget.provider != provider;
  }
}
