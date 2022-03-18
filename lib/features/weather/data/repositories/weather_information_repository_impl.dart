import 'package:injectable/injectable.dart';
import 'package:weather_module/features/weather/domain/entities/weather.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_module/core/error/exception.dart';
import 'package:weather_module/core/error/failures.dart';

import '../../domain/entities/weather.dart';
import '../../domain/repositories/weather_information_repository.dart';
import '../datasource/weather_information_data_source.dart';
import '../models/weather_data_source_model.dart';

@LazySingleton(as: IWeatherInformationRepository, env: [Environment.prod])
class WeatherInformationRepositoryImpl
    implements IWeatherInformationRepository {
  final IWeatherInformationDataSource weatherInformationDataSource;

  const WeatherInformationRepositoryImpl(
      {required this.weatherInformationDataSource});

  @override
  Future<Either<Failure, Weather>> getWeatherForCity(String city) async {
    try {
      final location =
          await weatherInformationDataSource.getLocationFromCity(city);
      final weatherInfo = await weatherInformationDataSource
          .getWeatherFromLocationId(location.woeid);
      final weather = Weather(
        temperature: Temperature(value: weatherInfo.theTemp),
        lastUpdated: DateTime.now(),
        location: location.title,
        condition: weatherInfo.weatherStateAbbr.toCondition,
      );
      return Right(weather);
    } on ServerException {
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
