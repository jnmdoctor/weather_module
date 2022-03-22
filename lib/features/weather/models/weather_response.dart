import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_module/features/weather/models/weather_data_source_model.dart';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed

///The returned response body when sending an API request to newsapi.org
class WeatherApiInformationResponse with _$WeatherApiInformationResponse {
  const WeatherApiInformationResponse._();
  const factory WeatherApiInformationResponse({
    @JsonKey(name: 'consolidated_weather') required List<WeatherDto> consolidatedWeather,
  }) = _WeatherApiInformationResponse;

  ///Creates a mock response with the number of [results] for weather information
  factory WeatherApiInformationResponse.mockData({
    required int results,
    required bool isSuccessful,
  }) {
    final mockWeathers = <WeatherDto>[];
    for (int i = 0; i < results; i++) {
      final weather = WeatherDto.mockData();
      mockWeathers.add(weather);
    }
    final mockResponse = WeatherApiInformationResponse(
      consolidatedWeather: isSuccessful ? mockWeathers : [],
    );
    return mockResponse;
  }

  ///Creates a [WeatherApiInformationResponse] model from [json]
  factory WeatherApiInformationResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiInformationResponseFromJson(json);
}