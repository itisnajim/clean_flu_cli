import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../base/usecase/base_async_usecase.dart';
import '../../repository/theme/theme_repository.dart';

class ThemeGetModeUsecase extends BaseAsyncUsecase<Unit, ThemeMode?> {
  final ThemeRepository repository;

  const ThemeGetModeUsecase({required this.repository});

  @override
  Future<ThemeMode?> callInternal(Unit param) {
    return repository.getThemeMode();
  }
}
