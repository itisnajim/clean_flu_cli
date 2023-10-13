import 'package:flutter/material.dart';

import '../../../data/base/database/app_database.dart';
import '../../../data/base/model/app_configs/local/local_app_configs.dart';
import 'theme_repository.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final AppDatabase database;

  const ThemeRepositoryImpl({required this.database});

  @override
  Future<ThemeMode?> getThemeMode() async {
    return (await database.get<LocalAppConfigs>(1))?.themeMode;
  }

  @override
  Future<void> setThemeMode(ThemeMode mode) async {
    var configs = await database.get<LocalAppConfigs>(1);
    configs ??= LocalAppConfigs();
    configs.copyWith(newThemeMode: mode);
    await database.set(configs);
  }
}
