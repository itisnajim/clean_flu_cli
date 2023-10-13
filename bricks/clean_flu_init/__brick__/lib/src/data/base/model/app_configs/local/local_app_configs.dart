import 'package:isar/isar.dart';
import 'package:flutter/material.dart';

import '../../../local_data.dart';

part 'local_app_configs.g.dart';

@collection
class LocalAppConfigs extends LocalData {
  // identifier = 1 : in the local storage we will have just one record of this model
  @override
  Id get identifier => 1;

  String? themeModeName; // can be 'light', 'dark' or 'system'.
  String? languageCode;

  LocalAppConfigs({
    this.themeModeName,
    this.languageCode,
  });

  LocalAppConfigs copyWith({
    ThemeMode? newThemeMode,
    String? newLanguageCode,
  }) =>
      this
        ..themeModeName = newThemeMode?.name ?? themeModeName
        ..languageCode = newLanguageCode ?? languageCode;

  @ignore
  ThemeMode? get themeMode {
    switch (themeModeName) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
