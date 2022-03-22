import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_module/core/platform_channels/weather_method_channel.dart';
import 'package:weather_module/features/preferences/domain/repositories/preferences_repository.dart';

import '../domain/usecases/get_weather_information.dart';
import '../models/weather.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

@Injectable(env: [Environment.prod])
class WeatherCubit extends Cubit<WeatherState> {
  final GetWeatherForCity getWeatherForCity;
  final WeatherMethodChannel methodChannel;
  final IPreferencesRepository preferences;

  WeatherCubit(
      {required GetWeatherForCity weatherForCity,
      required this.methodChannel,
      required this.preferences})
      : getWeatherForCity = weatherForCity,
        super(const WeatherState.initial());

  Future<void> fetchWeather(String? city) async {
    if (city == null || city.isEmpty) return;
    emit(const WeatherState.loading());
    final weatherEither =
        await getWeatherForCity(WeatherForCityParams(city: city));
    weatherEither.fold((failure) => emit(const WeatherState.failure()),
        (weather) async {
      bool isUsingMetricUnits = await preferences.getUseMetricUnitsData();
      if (!isUsingMetricUnits) {
        emit(WeatherState.success(_toggleUnitsForWeather(weather)));
      } else {
        emit(WeatherState.success(weather));
      }
    });
  }

  Future<void> fetchWeatherFromNative() async {
    emit(const WeatherState.loading());

    String? cityName =
        await methodChannel.get(methodChannelData: MethodChannelData.cityName);

    if (cityName == null || cityName.isEmpty) {
      emit(const WeatherState.failure());
      return;
    }

    fetchWeather(cityName);
  }

  Future<void> refreshWeather() async {
    state.maybeWhen(
        success: (weather) async {
          if (weather == Weather.empty) {
            return;
          }

          final weatherEither = await getWeatherForCity(
              WeatherForCityParams(city: weather.location));
          weatherEither.fold((failure) => emit(const WeatherState.failure()),
              (newWeather) => emit(WeatherState.success(newWeather)));
        },
        orElse: () {});
  }

  Weather _toggleUnitsForWeather(Weather weather) {
    Temperature temperature = weather.temperature;
    final convertedValue =
        temperature.temperatureUnits == TemperatureUnits.fahrenheit
            ? temperature.value.toCelsius()
            : temperature.value.toFahrenheit();
    final temperatureUnits =
        temperature.temperatureUnits == TemperatureUnits.fahrenheit
            ? TemperatureUnits.celsius
            : TemperatureUnits.fahrenheit;
    Temperature convertedTemperature =
        Temperature(value: convertedValue, temperatureUnits: temperatureUnits);
    return weather.copyWith(temperature: convertedTemperature);
  }
}

extension on double {
  double toFahrenheit() => ((this * 9 / 5) + 32);
  double toCelsius() => ((this - 32) * 5 / 9);
}
