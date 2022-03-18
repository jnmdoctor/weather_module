import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_module/core/error/failures.dart';
import 'package:weather_module/core/usecases/usecase.dart';

import '../entities/weather.dart';
import '../repositories/weather_information_repository.dart';

@LazySingleton(env: [Environment.prod])
class GetWeatherForCity extends UseCase<Weather, WeatherForCityParams> {
  final IWeatherInformationRepository repository;

  GetWeatherForCity(this.repository);
  @override
  Future<Either<Failure, Weather>> call(WeatherForCityParams params) async {
    return await repository.getWeatherForCity(params.city);
  }
}

class WeatherForCityParams extends Equatable {
  final String city;

  const WeatherForCityParams({required this.city});

  @override
  List<Object> get props => [city];
}
