import 'package:freezed_annotation/freezed_annotation.dart';

import '../../base/screen/screen_state.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_screen_state.freezed.dart';

@freezed
class {{#pascalCase}}{{name}}{{/pascalCase}}ScreenState with _${{#pascalCase}}{{name}}{{/pascalCase}}ScreenState implements ScreenState {
  const factory {{#pascalCase}}{{name}}{{/pascalCase}}ScreenState({
    required bool showLoading,
  }) = _{{#pascalCase}}{{name}}{{/pascalCase}}ScreenState;
}
