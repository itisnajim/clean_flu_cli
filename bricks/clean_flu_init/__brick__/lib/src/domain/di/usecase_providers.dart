import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../usecase/localization/localization_get_language_code_usecase.dart';
import '../usecase/localization/localization_set_language_code_usecase.dart';
import '../usecase/theme/theme_get_mode_usecase.dart';
import '../usecase/theme/theme_set_mode_usecase.dart';
import 'repository_providers.dart';

final themeGetModeUsecaseProvider = Provider<ThemeGetModeUsecase>(
  (ref) => ThemeGetModeUsecase(
    repository: ref.read(themeRepositoryProvider),
  ),
);

final themeSetModeUsecaseProvider = Provider<ThemeSetModeUsecase>(
  (ref) => ThemeSetModeUsecase(
    repository: ref.read(themeRepositoryProvider),
  ),
);

final localizationGetLanguageCodeUsecaseProvider =
    Provider<LocalizationGetLanguageCodeUsecase>((ref) {
  return LocalizationGetLanguageCodeUsecase(
      repository: ref.read(localizationRepositoryProvider));
});

final localizationSetLanguageCodeUsecaseProvider =
    Provider<LocalizationSetLanguageCodeUsecase>((ref) {
  return LocalizationSetLanguageCodeUsecase(
      repository: ref.read(localizationRepositoryProvider));
});
