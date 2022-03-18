import 'package:dartz/dartz.dart';
import 'package:weather_module/core/error/failures.dart';

import '../entities/weather.dart';

abstract class IWeatherInformationRepository {
  Future<Either<Failure, Weather>> getWeatherForCity(String city);
}
