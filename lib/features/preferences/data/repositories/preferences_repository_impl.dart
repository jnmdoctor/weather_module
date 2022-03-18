import 'package:injectable/injectable.dart';
import 'package:weather_module/features/preferences/domain/repositories/preferences_repository.dart';
import '../datasources/preferences_datasource.dart';

@LazySingleton(as: IPreferencesRepository, env: [Environment.prod])
class PreferencesRepositoryImpl implements IPreferencesRepository {
  final IPreferencesDataSource preferencesDataSource;

  const PreferencesRepositoryImpl({required this.preferencesDataSource});

  @override
  Future<bool> getUseMetricUnitsData() async {
    return await preferencesDataSource.getUseMetricUnitsData();
  }

  @override
  Future<void> setUseMetricUnitsData(bool isUsingMetricUnits) async {
    await preferencesDataSource.setUseMetricUnitsData(isUsingMetricUnits);
  }

  @override
  Future<void> clearCache() async {
    await preferencesDataSource.clearCache();
  }
}
