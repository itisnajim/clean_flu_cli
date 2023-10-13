import 'package:dartz/dartz.dart';

import '../../base/usecase/base_async_usecase.dart';
import '../../repository/localization/localization_repository.dart';

class LocalizationGetLanguageCodeUsecase
    extends BaseAsyncUsecase<Unit, String?> {
  final LocalizationRepository repository;

  LocalizationGetLanguageCodeUsecase({required this.repository});

  @override
  Future<String?> callInternal(Unit param) {
    return repository.getLanguageCode();
  }
}
