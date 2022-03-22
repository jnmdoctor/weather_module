import 'package:flutter/material.dart';
import 'package:weather_module/features/settings/presentation/views/settings.dart';
import 'package:weather_module/features/weather/views/weather_page.dart';

class WeatherRouter {
  static const root = '/';
  static const home = 'homeScreen';
  static const homeWithCity = 'homeWithCity';
  static const settings = 'setting';

  static PageRoute<Object> onGenerateRoute(RouteSettings settings) {
    final uri = Uri.parse(settings.name!);
    final name = uri.pathSegments[0];
    Widget page;
    switch (name) {
      case WeatherRouter.settings:
        page = const SettingsPage();
        break;
      case WeatherRouter.homeWithCity:
        page = const WeatherPageFromNative();
        break;
      case WeatherRouter.home:
      default:
        page = const WeatherPage();
        break;
    }

    return MaterialPageRoute<Object>(
      builder: (_) => page,
      settings: settings,
    );
  }
}
