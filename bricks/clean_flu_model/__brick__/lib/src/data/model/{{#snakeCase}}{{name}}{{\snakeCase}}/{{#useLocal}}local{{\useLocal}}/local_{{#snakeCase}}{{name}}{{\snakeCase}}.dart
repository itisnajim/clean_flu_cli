import 'package:isar/isar.dart';

import '../../../base/local_data.dart';

part 'local_{{#snakeCase}}{{name}}{{/snakeCase}}.g.dart';

@collection
class Local{{#pascalCase}}{{name}}{{/pascalCase}} implements LocalData {
  @override
  // TODO: 
  Id get identifier => id ?? Isar.autoIncrement;
  
  {{#isPropertiesExists}}{{#propertiesWithType}}{{.}};
  {{/propertiesWithType}}{{/isPropertiesExists}}
  Local{{#pascalCase}}{{name}}{{/pascalCase}}({{#isPropertiesExists}}{
    {{#namedParameters}}{{.}},
    {{/namedParameters}}
  }{{/isPropertiesExists}});
}

