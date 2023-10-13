import 'package:flutter/material.dart';

import '../../base/usecase/base_async_usecase.dart';
import '../../repository/theme/theme_repository.dart';

class ThemeSetModeUsecase extends BaseAsyncUsecase<ThemeMode, void> {
  final ThemeRepository repository;

  const ThemeSetModeUsecase({required this.repository});

  @override
  Future<void> callInternal(ThemeMode param) {
    return repository.setThemeMode(param);
  }
}
