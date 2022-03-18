import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_module/features/preferences/domain/repositories/preferences_repository.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

@Injectable(env: [Environment.prod])
class SettingsCubit extends Cubit<SettingsState> {
  final IPreferencesRepository preferences;

  SettingsCubit(this.preferences) : super(const SettingsState.ready(true));
  Future<void> init() async =>
      emit(SettingsState.ready(await _isUsingMetricUnits()));

  Future<void> onUseMetricUnits(bool isDataHidden) async {
    await preferences.setUseMetricUnitsData(isDataHidden);
    emit(SettingsState.ready(isDataHidden));
  }

  Future<bool> _isUsingMetricUnits() => preferences.getUseMetricUnitsData();
}
