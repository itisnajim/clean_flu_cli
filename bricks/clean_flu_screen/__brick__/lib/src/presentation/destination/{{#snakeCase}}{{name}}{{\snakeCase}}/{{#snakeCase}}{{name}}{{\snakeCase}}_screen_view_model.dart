import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../base/view_model/base_view_model.dart';
import '{{#snakeCase}}{{name}}{{/snakeCase}}_screen_state.dart';
import '{{#snakeCase}}{{name}}{{/snakeCase}}_screen_view_model_impl.dart';

final {{#snakeCase}}{{name}}{{/snakeCase}}ScreenViewModelProvider =
    StateNotifierProvider.autoDispose<{{#pascalCase}}{{name}}{{/pascalCase}}ScreenViewModel, {{#pascalCase}}{{name}}{{/pascalCase}}ScreenState>(
  (ref) => {{#pascalCase}}{{name}}{{/pascalCase}}ScreenViewModelImpl(const {{#pascalCase}}{{name}}{{/pascalCase}}ScreenState(
    showLoading: false,
  )),
);

abstract class {{#pascalCase}}{{name}}{{/pascalCase}}ScreenViewModel extends BaseViewModel<{{#pascalCase}}{{name}}{{/pascalCase}}ScreenState> {
  {{#pascalCase}}{{name}}{{/pascalCase}}ScreenViewModel(super.state);
}
