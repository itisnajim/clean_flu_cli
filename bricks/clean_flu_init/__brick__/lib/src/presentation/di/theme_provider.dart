import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/di/domain_module.dart';
import '../../domain/usecase/theme/theme_get_mode_usecase.dart';
import '../../domain/usecase/theme/theme_set_mode_usecase.dart';
import '../theme/color_schemes.dart';

final themeModeNotifierProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) {
    return ThemeModeNotifier(
      ref.read(themeGetModeUsecaseProvider),
      ref.read(themeSetModeUsecaseProvider),
    );
  },
);

final appMaterialThemeProvider = Provider((ref) {
  final themeMode = ref.watch(themeModeNotifierProvider);
  final platformBrightness =
      WidgetsBinding.instance.platformDispatcher.platformBrightness;
  bool isDark = themeMode == ThemeMode.system
      ? platformBrightness == Brightness.dark
      : themeMode == ThemeMode.dark;
  return !isDark ? darkThemeData : lightThemeData;
});

final appCupertinoThemeProvider = Provider((ref) {
  final themeMode = ref.watch(themeModeNotifierProvider);
  final platformBrightness =
      WidgetsBinding.instance.platformDispatcher.platformBrightness;
  bool isDark = themeMode == ThemeMode.system
      ? platformBrightness == Brightness.dark
      : themeMode == ThemeMode.dark;
  return !isDark ? cupertinoDark : cupertinoLight;
});

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  final ThemeGetModeUsecase _themeGetModeUsecase;
  final ThemeSetModeUsecase _themeSetModeUsecase;
  ThemeModeNotifier(
    this._themeGetModeUsecase,
    this._themeSetModeUsecase,
  ) : super(ThemeMode.system) {
    getThemeMode();
  }

  Future<ThemeMode> getThemeMode() async {
    final res = await _themeGetModeUsecase(unit);
    final mode = res.getOrElse(() => ThemeMode.system) ?? ThemeMode.system;
    if (state != mode) state = mode;
    return mode;
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    debugPrint('setThemeMode $mode');
    if (mode == state) return;
    await _themeSetModeUsecase(mode);
    state = mode;
  }
}

extension ThemeModeExt on ThemeMode {
  bool get isDark {
    final platformBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    return this == ThemeMode.system
        ? platformBrightness == Brightness.dark
        : this == ThemeMode.dark;
  }
}
