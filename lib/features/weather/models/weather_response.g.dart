// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherApiInformationResponse _$$_WeatherApiInformationResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_WeatherApiInformationResponse',
      json,
      ($checkedConvert) {
        final val = _$_WeatherApiInformationResponse(
          consolidatedWeather: $checkedConvert(
              'consolidated_weather',
              (v) => (v as List<dynamic>)
                  .map((e) => WeatherDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'consolidatedWeather': 'consolidated_weather'},
    );

Map<String, dynamic> _$$_WeatherApiInformationResponseToJson(
        _$_WeatherApiInformationResponse instance) =>
    <String, dynamic>{
      'consolidated_weather': instance.consolidatedWeather,
    };
