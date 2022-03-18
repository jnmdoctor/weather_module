abstract class IPreferencesRepository {
  Future<bool> getUseMetricUnitsData();
  Future<void> setUseMetricUnitsData(bool isUsingMetricUnits);
  Future<void> clearCache();
}
