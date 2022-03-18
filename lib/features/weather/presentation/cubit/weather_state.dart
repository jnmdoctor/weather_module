part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _InitialWeatherState;
  const factory WeatherState.loading() = _LoadingWeatherState;
  const factory WeatherState.success(Weather weather) = _SuccessWeatherState;
  const factory WeatherState.failure() = _FailureWeatherState;
}
