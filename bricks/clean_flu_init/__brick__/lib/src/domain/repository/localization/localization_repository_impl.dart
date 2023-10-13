import '../../../data/base/database/app_database.dart';

import '../../../data/base/model/app_configs/local/local_app_configs.dart';
import 'localization_repository.dart';

class LocalizationRepositoryImpl implements LocalizationRepository {
  final AppDatabase database;

  const LocalizationRepositoryImpl({
    required this.database,
  });

  @override
  Future<String?> getLanguageCode() async {
    return (await database.get<LocalAppConfigs>(1))?.languageCode;
  }

  @override
  Future<void> setLanguageCode(String code) async {
    var configs = await database.get<LocalAppConfigs>(1);
    configs ??= LocalAppConfigs();
    configs.copyWith(newLanguageCode: code);
    await database.set(configs);
  }
}
