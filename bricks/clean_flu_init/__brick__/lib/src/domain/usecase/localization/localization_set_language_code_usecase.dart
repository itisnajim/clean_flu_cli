import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:jiffy/jiffy.dart';
import '../../base/usecase/base_async_usecase.dart';
import '../../repository/localization/localization_repository.dart';

class LocalizationSetLanguageCodeUsecase
    extends BaseAsyncUsecase<String, List> {
  final LocalizationRepository repository;

  const LocalizationSetLanguageCodeUsecase({required this.repository});

  @override
  Future<List> callInternal(String param) {
    Future setJiffyLocale() {
      final completer = Completer();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        completer.complete(Jiffy.setLocale(param));
      });
      return completer.future;
    }

    return Future.wait([
      repository.setLanguageCode(param),
      setJiffyLocale(),
    ]);
  }
}
