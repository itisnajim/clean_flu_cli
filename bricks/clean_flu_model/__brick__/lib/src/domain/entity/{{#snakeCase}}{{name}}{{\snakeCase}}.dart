import 'package:freezed_annotation/freezed_annotation.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}.freezed.dart';

@freezed
class {{#pascalCase}}{{name}}{{/pascalCase}} with _${{#pascalCase}}{{name}}{{/pascalCase}} {
  const {{#pascalCase}}{{name}}{{/pascalCase}}._();
  
  const factory {{#pascalCase}}{{name}}{{/pascalCase}}({{#isPropertiesExists}}{
    {{#namedConstructorParameters}}{{.}},
    {{/namedConstructorParameters}}
  }{{/isPropertiesExists}}) = _{{#pascalCase}}{{name}}{{/pascalCase}};
}
