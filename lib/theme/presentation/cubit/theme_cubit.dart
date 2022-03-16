import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_module/theme/app_color.dart';
import 'package:weather_module/features/weather/domain/entities/weather.dart';

class ThemeCubit extends Cubit<Color> {
  ThemeCubit() : super(defaultColor);

  static const defaultColor = AppColor.defaultWeatherColor;

  void updateTheme(Weather? weather) {
    if (weather != null) emit(weather.toColor);
  }

  Color fromJson(Map<String, dynamic> json) {
    return Color(int.parse(json['color'] as String));
  }

  Map<String, dynamic> toJson(Color state) {
    return <String, String>{'color': '${state.value}'};
  }
}

extension on Weather {
  Color get toColor {
    switch (condition) {
      case WeatherCondition.clear:
        return AppColor.clearWeather;
      case WeatherCondition.snowy:
        return AppColor.snowyWeather;
      case WeatherCondition.cloudy:
        return AppColor.cloudyWeather;
      case WeatherCondition.rainy:
        return AppColor.rainyWeather;
      case WeatherCondition.unknown:
      default:
        return AppColor.defaultWeatherColor;
    }
  }
}
