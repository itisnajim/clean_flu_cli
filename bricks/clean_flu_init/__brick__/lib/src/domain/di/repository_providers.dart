import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/di/data_module.dart';
import '../repository/localization/localization_repository.dart';
import '../repository/localization/localization_repository_impl.dart';
import '../repository/theme/theme_repository.dart';
import '../repository/theme/theme_repository_impl.dart';

final themeRepositoryProvider = Provider<ThemeRepository>(
  (ref) => ThemeRepositoryImpl(
    database: ref.read(localDataProvider),
  ),
);

final localizationRepositoryProvider = Provider<LocalizationRepository>(
  (ref) => LocalizationRepositoryImpl(
    database: ref.read(localDataProvider),
  ),
);
