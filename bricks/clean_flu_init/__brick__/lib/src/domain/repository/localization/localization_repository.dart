abstract class LocalizationRepository {
  Future<String?> getLanguageCode();
  Future<void> setLanguageCode(String code);
}
