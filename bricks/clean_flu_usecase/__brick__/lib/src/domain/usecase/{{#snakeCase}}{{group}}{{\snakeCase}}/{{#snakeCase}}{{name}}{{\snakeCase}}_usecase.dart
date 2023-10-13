import '../../base/usecase/{{#snakeCase}}{{classToUse}}{{/snakeCase}}.dart';
import '../../repository/{{#snakeCase}}{{group}}{{/snakeCase}}/{{#snakeCase}}{{group}}{{/snakeCase}}_repository.dart';

// TODO: Replace IN_TYPE and OUT_TYPE with the correct types.
class {{#pascalCase}}{{name}}{{/pascalCase}}Usecase extends {{classToUse}}<IN_TYPE, OUT_TYPE> {
  // TODO: Declare a private repository field.
  final {{#pascalCase}}{{group}}{{/pascalCase}}Repository _repository;

  const {{#pascalCase}}{{name}}{{/pascalCase}}Usecase(this._repository);

  @override
  {{{internalOutputType}}} callInternal(IN_TYPE param) {
    // TODO: Implement the logic for your use case here.
    return _repository.funcToCall(param);
  }
}
