import 'package:hive_flutter/hive_flutter.dart';

class Preferences {
  static const _preferencesBox = '_useMetricUnitsBox';
  static const _useMetricUnitsDataKey = '_useMetricUnitsDataKey';

  Future<bool> getUseMetricUnitsData() async {
    final box = await Hive.openBox<Object>(_preferencesBox);
    final isUsingMetricUnits = box.get(_useMetricUnitsDataKey) as bool?;
    return isUsingMetricUnits ?? true;
  }

  Future<void> setUseMetricUnitsData(bool isUsingMetricUnits) async {
    final box = await Hive.openBox<Object>(_preferencesBox);
    return box.put(_useMetricUnitsDataKey, isUsingMetricUnits);
  }

  Future<void> clearCache() async {
    final box = await Hive.openBox<Object>(_preferencesBox);
    await box.deleteFromDisk();
  }
}
