import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

abstract class IPreferencesDataSource {
  /// Calls the Hive implementation for stored data
  Future<bool> getUseMetricUnitsData();

  /// Calls the Hive implementation for sotring data
  Future<void> setUseMetricUnitsData(bool isUsingMetricUnits);

  /// Calls the Hive implementation for clearing data
  Future<void> clearCache();
}

@LazySingleton(as: IPreferencesDataSource, env: [Environment.prod])
class PreferencesDataSource implements IPreferencesDataSource {
  static const _preferencesBox = '_useMetricUnitsBox';
  static const _useMetricUnitsDataKey = '_useMetricUnitsDataKey';

  @override
  Future<bool> getUseMetricUnitsData() async {
    final box = await Hive.openBox<Object>(_preferencesBox);
    final isUsingMetricUnits = box.get(_useMetricUnitsDataKey) as bool?;
    return isUsingMetricUnits ?? true;
  }

  @override
  Future<void> setUseMetricUnitsData(bool isUsingMetricUnits) async {
    final box = await Hive.openBox<Object>(_preferencesBox);
    return box.put(_useMetricUnitsDataKey, isUsingMetricUnits);
  }

  @override
  Future<void> clearCache() async {
    final box = await Hive.openBox<Object>(_preferencesBox);
    await box.deleteFromDisk();
  }
}
