import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_module/weather/data/models/weather_data_source_model.dart';
import '../../../fixtures/fixture_reader.dart';

void main() {
  final WeatherDataSourceModel tWeatherDataSourceModel = WeatherDataSourceModel(
      id: 5062572786057216,
      weatherStateName: 'Heavy Rain',
      weatherStateAbbr: WeatherState.heavyRain,
      windDirectionCompass: WindDirectionCompass.unknown,
      created: DateTime.parse('2022-03-16T05:08:34.256936Z'),
      applicableDate: DateTime.parse('2022-03-16'),
      minTemp: 25.564999999999998,
      maxTemp: 32.52,
      theTemp: 30.979999999999997,
      windSpeed: 5.482846926156578,
      windDirection: 108.84788711139,
      airPressure: 1008,
      humidity: 70,
      visibility: 10.315693847928099,
      predictability: 77);

  group('JSON conversion', () {
    test('convert from JSON', () {
      Map<String, dynamic> weatherMap = json.decode(fixture('weather.json'));
      List<dynamic> weatherList = weatherMap['consolidated_weather'];
      Map<String, dynamic> jsonMap = weatherList.first;
      final result = WeatherDataSourceModel.fromJson(jsonMap);
      expect(result, tWeatherDataSourceModel);
    });
  });
}
