import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../l10n/res.dart';
import '../usecase/localization/localization_get_language_code_usecase.dart';
import '../usecase/localization/localization_set_language_code_usecase.dart';
import 'usecase_providers.dart';

final localizationProvider =
    StateNotifierProvider<LocalizationNotifier, Locale>(
  (ref) => LocalizationNotifier(
    ref.read(
      localizationGetLanguageCodeUsecaseProvider,
    ),
    ref.read(
      localizationSetLanguageCodeUsecaseProvider,
    ),
  ),
);

class LocalizationNotifier extends StateNotifier<Locale> {
  LocalizationNotifier(
    this._localizationGetLanguageCodeUsecase,
    this._localizationSetLanguageCodeUsecase,
  ) : super(Resource.supportedLocales.first) {
    initLocale();
  }

  final LocalizationGetLanguageCodeUsecase _localizationGetLanguageCodeUsecase;
  final LocalizationSetLanguageCodeUsecase _localizationSetLanguageCodeUsecase;

  Future<void> initLocale() async {
    final res = await _localizationGetLanguageCodeUsecase(unit);
    res.fold(
      (l) {
        // do nothing!
      },
      (r) {
        if (r == state.languageCode) return r;
        debugPrint(
          'LocalizationNotifier: initLocale from ${state.languageCode} to $r',
        );
        return state =
            Locale(r ?? Resource.supportedLocales.first.languageCode);
      },
    );
  }

  Future<void> setLanguageCode(String languageCode) async {
    final locale = Locale(languageCode);
    if (locale.languageCode == state.languageCode) return;

    final res = await _localizationSetLanguageCodeUsecase(languageCode);
    debugPrint('LocalizationNotifier: setLanguageCode res $res');

    state = locale;
  }
}
