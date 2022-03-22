import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_module/core/error/failures.dart';

import '../models/weather.dart';
import '../models/weather_data_source_model.dart';
import './weather_information_client.dart';

abstract class IWeatherInformationRepository {
  Future<Either<Failure, Weather>> getWeatherForCity(String city);
}

@LazySingleton(as: IWeatherInformationRepository, env: [Environment.prod])
class WeatherInformationRepositoryImpl
    implements IWeatherInformationRepository {

  final WeatherInformationClient client;

  const WeatherInformationRepositoryImpl({
    required this.client
  });

  @override
  Future<Either<Failure, Weather>> getWeatherForCity(String city) async {
    try {
      final response = await client.getLocationByCity(city: city);
      if (response.data.isEmpty) {
        return Left(ServerFailure());
      }

      final locationDto = response.data.first;
      final locationModel = locationDto.toModel();
      final weatherResponse =
          await client.getWeatherById(id: locationModel.woeid);
      final weatherDto = weatherResponse.consolidatedWeather.first;
      final Weather weatherModel = Weather(
        condition: weatherDto.weatherStateAbbr.toCondition,
        lastUpdated: DateTime.now(),
        location: locationDto.title,
        temperature: Temperature(value: weatherDto.theTemp),
      );

      return Right(weatherModel);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}

extension on WeatherState {
  WeatherCondition get toCondition {
    switch (this) {
      case WeatherState.clear:
        return WeatherCondition.clear;
      case WeatherState.snow:
      case WeatherState.sleet:
      case WeatherState.hail:
        return WeatherCondition.snowy;
      case WeatherState.thunderstorm:
      case WeatherState.heavyRain:
      case WeatherState.lightRain:
      case WeatherState.showers:
        return WeatherCondition.rainy;
      case WeatherState.heavyCloud:
      case WeatherState.lightCloud:
        return WeatherCondition.cloudy;
      default:
        return WeatherCondition.unknown;
    }
  }
}
