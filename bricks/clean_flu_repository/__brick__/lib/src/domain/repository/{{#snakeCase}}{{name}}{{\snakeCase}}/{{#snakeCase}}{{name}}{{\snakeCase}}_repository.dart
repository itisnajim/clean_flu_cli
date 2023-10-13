import '../../entity/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';

abstract class {{#pascalCase}}{{name}}{{/pascalCase}}Repository {
  Future<{{#pascalCase}}{{name}}{{/pascalCase}}> get(int id);
  Future<{{#pascalCase}}{{name}}{{/pascalCase}}> update({{#pascalCase}}{{name}}{{/pascalCase}} toUpdate);
}
