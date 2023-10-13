import 'package:json_annotation/json_annotation.dart';

import '../../../base/remote_data.dart';

part 'remote_{{#snakeCase}}{{name}}{{/snakeCase}}.g.dart';

@JsonSerializable()
class Remote{{#pascalCase}}{{name}}{{/pascalCase}} implements RemoteData {
  {{#isPropertiesExists}}{{#propertiesWithType}}final {{.}};
  {{/propertiesWithType}}{{/isPropertiesExists}}
  const Remote{{#pascalCase}}{{name}}{{/pascalCase}}({{#isPropertiesExists}}{
    {{#namedParameters}}{{.}},
    {{/namedParameters}}
  }{{/isPropertiesExists}});

  factory Remote{{#pascalCase}}{{name}}{{/pascalCase}}.fromJson(Map<String, dynamic> json) =>
      _$Remote{{#pascalCase}}{{name}}{{/pascalCase}}FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$Remote{{#pascalCase}}{{name}}{{/pascalCase}}ToJson(this);
}
