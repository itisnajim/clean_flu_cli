import 'package:flutter/material.dart';

abstract class ThemeRepository {
  Future<ThemeMode?> getThemeMode();
  Future<void> setThemeMode(ThemeMode mode);
}
