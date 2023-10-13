import '{{#snakeCase}}{{name}}{{/snakeCase}}_screen_view_model.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}ScreenViewModelImpl extends {{#pascalCase}}{{name}}{{/pascalCase}}ScreenViewModel {
  {{#pascalCase}}{{name}}{{/pascalCase}}ScreenViewModelImpl(super.state);

  @override
  void onInit() {}
}
