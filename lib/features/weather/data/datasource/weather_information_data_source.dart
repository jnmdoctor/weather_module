import 'package:injectable/injectable.dart';
import 'package:weather_module/core/error/exception.dart';
import 'package:weather_module/features/weather/data/datasource/weather_information_client.dart';

import '../models/weather_data_source_model.dart';
import '../models/location.dart';

abstract class IWeatherInformationDataSource {
  /// Calls the https://www.metaweather.com/api/location endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<Location> getLocationFromCity(String city);

  /// Calls the https://www.metaweather.com/api/location/search endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<WeatherDataSourceModel> getWeatherFromLocationId(int locationId);
}

@LazySingleton(as: IWeatherInformationDataSource, env: [Environment.prod])
class WeatherInformationDataSource implements IWeatherInformationDataSource {
  final WeatherInformationClient client;
  WeatherInformationDataSource({required this.client});

  @override
  Future<Location> getLocationFromCity(String city) async {
    final locationResponse = await client.getWeatherByCity(city: city);
    if (locationResponse.response.statusCode != 200) {
      throw ServerException();
    }
    if (locationResponse.data.isEmpty) {
      throw ServerException();
    }
    return locationResponse.data.first;
  }

  @override
  Future<WeatherDataSourceModel> getWeatherFromLocationId(
      int locationId) async {
    //need to make a model for consolidated weather or get only that part of the response json
    final weatherResponse = await client.getWeatherById(id: locationId);

    if (weatherResponse.response.statusCode != 200) {
      throw ServerException();
    }

    return weatherResponse.data;
  }
}
