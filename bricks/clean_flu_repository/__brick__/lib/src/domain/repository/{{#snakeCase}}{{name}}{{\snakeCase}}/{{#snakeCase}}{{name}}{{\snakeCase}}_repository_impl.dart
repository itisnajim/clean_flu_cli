import '../../entity/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';
import '{{#snakeCase}}{{name}}{{/snakeCase}}_repository.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}RepositoryImpl implements {{#pascalCase}}{{name}}{{/pascalCase}}Repository  {
  {{#useRemote}}final Remote{{#pascalCase}}{{name}}{{/pascalCase}}Service _remote{{#pascalCase}}{{name}}{{/pascalCase}}Service;{{/useRemote}}
  {{#useLocal}}final AppDatabase _appDatabase;{{/useLocal}}

  const {{#pascalCase}}{{name}}{{/pascalCase}}RepositoryImpl(
    {{#useRemote}}this._remote{{#pascalCase}}{{name}}{{/pascalCase}}Service,{{/useRemote}}
    {{#useLocal}}this._appDatabase,{{/useLocal}}
  );

  @override
  Future<{{#pascalCase}}{{name}}{{/pascalCase}}> get(int id){
    // TODO:
  }

  @override
  Future<{{#pascalCase}}{{name}}{{/pascalCase}}> update({{#pascalCase}}{{name}}{{/pascalCase}} toUpdate){
    // TODO:
  }
}