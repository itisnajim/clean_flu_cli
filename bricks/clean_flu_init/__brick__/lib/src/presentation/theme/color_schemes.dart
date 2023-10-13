import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Made for FlexColorScheme version 7.0.5. Make sure you
// use same or higher package version, but still same major version.
// If you use a lower version, some properties may not be supported.
// In that case remove them after copying this theme to your app.
final lightThemeData = FlexThemeData.light(
  colors: const FlexSchemeColor(
    primary: Color(0xFF215FA6),
    primaryContainer: Color(0xFFD5E3FF),
    secondary: Color(0xFF555F71),
    secondaryContainer: Color(0xFFD9E3F8),
    tertiary: Color(0xFFC00008),
    tertiaryContainer: Color(0xFFFFDAD5),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useM2StyleDividerInM3: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  //fontFamily: FontFamily.poppins,
);

final CupertinoThemeData cupertinoLight = MaterialBasedCupertinoThemeData(
  materialTheme: lightThemeData.copyWith(
    cupertinoOverrideTheme: const CupertinoThemeData(
      brightness: Brightness.light,
      applyThemeToAll: true,
    ),
  ),
);

final darkThemeData = FlexThemeData.dark(
  colors: const FlexSchemeColor(
    primary: Color(0xFFA6C8FF),
    primaryContainer: Color(0xFF004787),
    secondary: Color(0xFFBDC7DC),
    secondaryContainer: Color(0xFF3D4758),
    tertiary: Color(0xFFFFB4A9),
    tertiaryContainer: Color(0xFF930004),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useM2StyleDividerInM3: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  //fontFamily: FontFamily.poppins,
);

const _darkDefaultCupertinoTheme =
    CupertinoThemeData(brightness: Brightness.dark);

final CupertinoThemeData cupertinoDark = MaterialBasedCupertinoThemeData(
  materialTheme: darkThemeData.copyWith(
    cupertinoOverrideTheme: CupertinoThemeData(
      brightness: Brightness.dark,
      barBackgroundColor: _darkDefaultCupertinoTheme.barBackgroundColor,
      textTheme: CupertinoTextThemeData(
        navActionTextStyle: _darkDefaultCupertinoTheme
            .textTheme.navActionTextStyle
            .copyWith(color: const Color(0xF0F9F9F9)),
        navLargeTitleTextStyle: _darkDefaultCupertinoTheme
            .textTheme.navLargeTitleTextStyle
            .copyWith(color: const Color(0xF0F9F9F9)),
      ),
      applyThemeToAll: true,
    ),
  ),
);
